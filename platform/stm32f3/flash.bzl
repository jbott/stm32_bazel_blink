"""
Generate a flash script target usign openocd
"""

def _flash_script_impl(ctx):
    ctx.actions.expand_template(
        template = ctx.file.template,
        output = ctx.outputs.source_file,
        substitutions = {
            "%{hex_file}": ctx.file.hex_file.short_path,
        },
    )

    # Specify runfiles that are needed during runtime
    runfiles = ctx.runfiles(
        # Add some files manually.
        files = [ctx.file.hex_file],
        # Collect runfiles from the common locations: transitively from srcs,
        # deps and data attributes.
        collect_default = True,
    )
    return [DefaultInfo(runfiles=runfiles)]

flash_script = rule(
    implementation = _flash_script_impl,
    attrs = {
        "hex_file": attr.label(
            mandatory = True,
            allow_single_file = True,
            doc = "The hex file to flash",
        ),
        "template": attr.label(
            default = Label("//platform/stm32f3:tpl/flash.sh.tpl"),
            allow_single_file = True,
            doc = "The template file to use",
        ),
    },
    outputs = {"source_file": "%{name}.sh"},
)
