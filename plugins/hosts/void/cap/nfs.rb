module VagrantPlugins
  module HostVoid
    module Cap
      class NFS
        def self.nfs_check_command(env)
          "/usr/bin/sv status nfs-server"
        end

        def self.nfs_start_command(env)
          "/usr/bin/sv up nfs-server "
        end

        def self.nfs_installed(env)
          Kernel.system("/usr/bin/xbps-query nfs-utils", [:out, :err] => "/dev/null")
        end
      end
    end
  end
end
