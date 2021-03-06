# encoding: ASCII-8BIT
# frozen_string_literal: true

require 'pwnlib/shellcraft/generators/amd64/common/common'
require 'pwnlib/shellcraft/generators/x86/common/setregs'

module Pwnlib
  module Shellcraft
    module Generators
      module Amd64
        module Common
          # @overload setregs(reg_context, stack_allowed: true)
          #
          # @see Generators::X86::Common#setregs
          def setregs(*args, **kwargs)
            context.local(arch: :amd64) do
              cat X86::Common.setregs(*args, **kwargs)
            end
          end
        end
      end
    end
  end
end
