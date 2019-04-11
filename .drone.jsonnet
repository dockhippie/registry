local pipeline = import 'pipeline.libsonnet';
local name = 'webhippie/registry';

[
  pipeline.build(name, 'latest', 'latest', 'amd64'),
  pipeline.build(name, 'latest', 'latest', 'arm32v6'),
  pipeline.build(name, 'latest', 'latest', 'arm64v8'),
  pipeline.manifest('latest', 'latest', ['amd64', 'arm32v6', 'arm64v8']),
  pipeline.build(name, 'v2.7', '2.7', 'amd64'),
  pipeline.build(name, 'v2.7', '2.7', 'arm32v6'),
  pipeline.build(name, 'v2.7', '2.7', 'arm64v8'),
  pipeline.manifest('v2.7', '2.7', ['amd64', 'arm32v6', 'arm64v8']),
  pipeline.microbadger(['latest', '2.7']),
]
