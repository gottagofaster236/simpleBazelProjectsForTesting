"""Macro used by nonModuleTargetsTest to exercise the macro-internal hiding rule."""

def macro_with_internal(name):
    """Creates two filegroups: a visible main target named `name`, and an internal helper.

    The internal helper has `generator_name == name` (the outer macro name) and
    `name == name + "_internal"`, i.e. generator_name != name, so it must stay hidden.
    """
    native.filegroup(name = name)
    native.filegroup(name = name + "_internal")
