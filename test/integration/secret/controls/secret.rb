secret_name = input('secret_name')
project_id = input('project_id')

control "gcloud" do
    title "gcloud configuration"

    describe command("gcloud secrets describe secret-test --project=my-first-project-298218 --format=json") do
      its(:exit_status) { should eq 0 }
      its(:stderr) { should eq '' }
  
      let(:data) do
        if subject.exit_status == 0
          JSON.parse(subject.stdout)
        else
          {}
        end
      end
    end
end