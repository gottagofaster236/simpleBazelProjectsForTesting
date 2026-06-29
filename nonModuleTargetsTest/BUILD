load(":helpers.bzl", "macro_with_internal")

sh_binary(
    name = "bin",
    srcs = ["bin.sh"],
)

sh_library(
    name = "lib",
    srcs = ["lib.sh"],
    deps = ["//first_level_dep:lib"],
)

sh_test(
    name = "test",
    srcs = ["test.sh"],
)

# Hand-authored, sourceless, non-executable: must still appear in the Bazel tool window
# even though it has no sources and is not a binary/test.
filegroup(name = "files_group")

# Hand-authored, manual-tagged: must still appear. The `manual` tag should only skip
# auto-build during wildcard expansion, not hide the target from the IDE model.
genrule(
    name = "manual_genrule",
    outs = ["manual_out.txt"],
    cmd = "touch $@",
    tags = ["manual"],
)

# Top-level macro invocation. The visible main target `macro_target` is hand-authored
# (the author wrote this call in the BUILD file) and must appear; the macro-internal
# helper `macro_target_internal` was NOT written by the author and must stay hidden.
macro_with_internal(name = "macro_target")
