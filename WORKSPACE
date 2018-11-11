# local_repository(
#     name = "rules_arm_none_eabi",
#     path = "/Users/jbo/Dev/rules_arm-none-eabi_embedded",
# )

git_repository(
    name = "gcc_arm_none_eabi",
    remote = "https://github.com/jbott/rules_gcc_arm_none_eabi.git",
    commit = "56459102d456a714950e9c104c9e61960bea6e5d",
    sha256 = "7604cdfb85f777578de5c20b76467e7671bb4ba441041dbd185c79bb6f41bb43",
)

load("@gcc_arm_none_eabi//toolchain:configure.bzl", "gcc_arm_none_eabi_toolchain")

gcc_arm_none_eabi_toolchain(
    name = "gcc_7_2018_q2_update",
)
