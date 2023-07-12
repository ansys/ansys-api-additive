#! /bin/bash
outdir="protoc-output"
rm -rf ${outdir}
mkdir -p ${outdir}
python -m grpc_tools.protoc --python_out=${outdir} --grpc_python_out=${outdir} -I. ansys/api/additive/v0/*.proto
echo "protobuf interface files written to ${outdir}"
dotnet build csharp/*.csproj