module Travis
  module Services
    module Artifacts
      class One < Base
        def run(options = {})
          result if result
        end

        def final?
          # TODO keep the state on the artifact
          result.job.finished?
        end

        private

          def result
            @result ||= scope(:artifact).find_by_id(params[:id])
          end
      end
    end
  end
end
