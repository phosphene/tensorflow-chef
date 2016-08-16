include_attribute "kagent"

default.tensorflow.group         = node.kagent.user
default.tensorflow.user          = node.kagent.group


default.cuda.major_version       = "7.5"
default.cuda.minor_version       = "18"
default.cuda.version             = node.cuda.major_version + "." + node.cuda.minor_version
default.cuda.url     = "http://developer.download.nvidia.com/compute/cuda/#{node.cuda.major_version}/Prod/local_installers/cuda_#{node.cuda.version}_linux.run"
default.cuda.md5sum              = "4b3bcecf0dfc35928a0898793cf3e4c6"

default.cudnn.version            = "5.0"
default.cudnn.url                = "#{node.download_url}/cudnn-#{node.cuda.major_version}-linux-x64-v#{node.cudnn.version}-ga.tgz"

default.cuda.dir                 = "/usr/local"
default.cuda.base_dir            = "#{cuda.dir}/cuda"
default.cuda.version_dir         = "#{cuda.dir}/cuda-#{node.cuda.major_version}