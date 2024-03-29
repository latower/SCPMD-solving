# This file was automatically generated by SWIG (http://www.swig.org).
# Version 3.0.12
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

from sys import version_info as _swig_python_version_info
if _swig_python_version_info >= (2, 7, 0):
    def swig_import_helper():
        import importlib
        pkg = __name__.rpartition('.')[0]
        mname = '.'.join((pkg, '_sdd')).lstrip('.')
        try:
            return importlib.import_module(mname)
        except ImportError:
            return importlib.import_module('_sdd')
    _sdd = swig_import_helper()
    del swig_import_helper
elif _swig_python_version_info >= (2, 6, 0):
    def swig_import_helper():
        from os.path import dirname
        import imp
        fp = None
        try:
            fp, pathname, description = imp.find_module('_sdd', [dirname(__file__)])
        except ImportError:
            import _sdd
            return _sdd
        try:
            _mod = imp.load_module('_sdd', fp, pathname, description)
        finally:
            if fp is not None:
                fp.close()
        return _mod
    _sdd = swig_import_helper()
    del swig_import_helper
else:
    import _sdd
del _swig_python_version_info

try:
    _swig_property = property
except NameError:
    pass  # Python < 2.2 doesn't have 'property'.

try:
    import builtins as __builtin__
except ImportError:
    import __builtin__

def _swig_setattr_nondynamic(self, class_type, name, value, static=1):
    if (name == "thisown"):
        return self.this.own(value)
    if (name == "this"):
        if type(value).__name__ == 'SwigPyObject':
            self.__dict__[name] = value
            return
    method = class_type.__swig_setmethods__.get(name, None)
    if method:
        return method(self, value)
    if (not static):
        if _newclass:
            object.__setattr__(self, name, value)
        else:
            self.__dict__[name] = value
    else:
        raise AttributeError("You cannot add attributes to %s" % self)


def _swig_setattr(self, class_type, name, value):
    return _swig_setattr_nondynamic(self, class_type, name, value, 0)


def _swig_getattr(self, class_type, name):
    if (name == "thisown"):
        return self.this.own()
    method = class_type.__swig_getmethods__.get(name, None)
    if method:
        return method(self)
    raise AttributeError("'%s' object has no attribute '%s'" % (class_type.__name__, name))


def _swig_repr(self):
    try:
        strthis = "proxy of " + self.this.__repr__()
    except __builtin__.Exception:
        strthis = ""
    return "<%s.%s; %s >" % (self.__class__.__module__, self.__class__.__name__, strthis,)

try:
    _object = object
    _newclass = 1
except __builtin__.Exception:
    class _object:
        pass
    _newclass = 0


def sdd_array_element(arr, element):
    return _sdd.sdd_array_element(arr, element)
sdd_array_element = _sdd.sdd_array_element

def sdd_array_int_element(arr, element):
    return _sdd.sdd_array_int_element(arr, element)
sdd_array_int_element = _sdd.sdd_array_int_element
PRIsS = _sdd.PRIsS
PRInsS = _sdd.PRInsS
PRIrcS = _sdd.PRIrcS
PRImcS = _sdd.PRImcS
PRIlitS = _sdd.PRIlitS
CONJOIN = _sdd.CONJOIN
DISJOIN = _sdd.DISJOIN

def sdd_manager_new(vtree):
    return _sdd.sdd_manager_new(vtree)
sdd_manager_new = _sdd.sdd_manager_new

def sdd_manager_create(var_count, auto_gc_and_minimize):
    return _sdd.sdd_manager_create(var_count, auto_gc_and_minimize)
sdd_manager_create = _sdd.sdd_manager_create

def sdd_manager_free(manager):
    return _sdd.sdd_manager_free(manager)
sdd_manager_free = _sdd.sdd_manager_free

def sdd_manager_print(manager):
    return _sdd.sdd_manager_print(manager)
sdd_manager_print = _sdd.sdd_manager_print

def sdd_manager_auto_gc_and_minimize_on(manager):
    return _sdd.sdd_manager_auto_gc_and_minimize_on(manager)
sdd_manager_auto_gc_and_minimize_on = _sdd.sdd_manager_auto_gc_and_minimize_on

def sdd_manager_auto_gc_and_minimize_off(manager):
    return _sdd.sdd_manager_auto_gc_and_minimize_off(manager)
sdd_manager_auto_gc_and_minimize_off = _sdd.sdd_manager_auto_gc_and_minimize_off

def sdd_manager_set_minimize_function(func, manager):
    return _sdd.sdd_manager_set_minimize_function(func, manager)
sdd_manager_set_minimize_function = _sdd.sdd_manager_set_minimize_function

def sdd_manager_unset_minimize_function(manager):
    return _sdd.sdd_manager_unset_minimize_function(manager)
sdd_manager_unset_minimize_function = _sdd.sdd_manager_unset_minimize_function

def sdd_manager_options(manager):
    return _sdd.sdd_manager_options(manager)
sdd_manager_options = _sdd.sdd_manager_options

def sdd_manager_set_options(options, manager):
    return _sdd.sdd_manager_set_options(options, manager)
sdd_manager_set_options = _sdd.sdd_manager_set_options

def sdd_manager_is_var_used(var, manager):
    return _sdd.sdd_manager_is_var_used(var, manager)
sdd_manager_is_var_used = _sdd.sdd_manager_is_var_used

def sdd_manager_vtree_of_var(var, manager):
    return _sdd.sdd_manager_vtree_of_var(var, manager)
sdd_manager_vtree_of_var = _sdd.sdd_manager_vtree_of_var

def sdd_manager_lca_of_literals(count, literals, manager):
    return _sdd.sdd_manager_lca_of_literals(count, literals, manager)
sdd_manager_lca_of_literals = _sdd.sdd_manager_lca_of_literals

def sdd_manager_var_count(manager):
    return _sdd.sdd_manager_var_count(manager)
sdd_manager_var_count = _sdd.sdd_manager_var_count

def sdd_manager_var_order(var_order, manager):
    return _sdd.sdd_manager_var_order(var_order, manager)
sdd_manager_var_order = _sdd.sdd_manager_var_order

def sdd_manager_add_var_before_first(manager):
    return _sdd.sdd_manager_add_var_before_first(manager)
sdd_manager_add_var_before_first = _sdd.sdd_manager_add_var_before_first

def sdd_manager_add_var_after_last(manager):
    return _sdd.sdd_manager_add_var_after_last(manager)
sdd_manager_add_var_after_last = _sdd.sdd_manager_add_var_after_last

def sdd_manager_add_var_before(target_var, manager):
    return _sdd.sdd_manager_add_var_before(target_var, manager)
sdd_manager_add_var_before = _sdd.sdd_manager_add_var_before

def sdd_manager_add_var_after(target_var, manager):
    return _sdd.sdd_manager_add_var_after(target_var, manager)
sdd_manager_add_var_after = _sdd.sdd_manager_add_var_after

def sdd_manager_true(manager):
    return _sdd.sdd_manager_true(manager)
sdd_manager_true = _sdd.sdd_manager_true

def sdd_manager_false(manager):
    return _sdd.sdd_manager_false(manager)
sdd_manager_false = _sdd.sdd_manager_false

def sdd_manager_literal(literal, manager):
    return _sdd.sdd_manager_literal(literal, manager)
sdd_manager_literal = _sdd.sdd_manager_literal

def sdd_apply(node1, node2, op, manager):
    return _sdd.sdd_apply(node1, node2, op, manager)
sdd_apply = _sdd.sdd_apply

def sdd_apply_in_vtree(node1, node2, op, vtree, manager):
    return _sdd.sdd_apply_in_vtree(node1, node2, op, vtree, manager)
sdd_apply_in_vtree = _sdd.sdd_apply_in_vtree

def sdd_conjoin(node1, node2, manager):
    return _sdd.sdd_conjoin(node1, node2, manager)
sdd_conjoin = _sdd.sdd_conjoin

def sdd_disjoin(node1, node2, manager):
    return _sdd.sdd_disjoin(node1, node2, manager)
sdd_disjoin = _sdd.sdd_disjoin

def sdd_negate(node, manager):
    return _sdd.sdd_negate(node, manager)
sdd_negate = _sdd.sdd_negate

def sdd_condition(lit, node, manager):
    return _sdd.sdd_condition(lit, node, manager)
sdd_condition = _sdd.sdd_condition

def sdd_exists(var, node, manager):
    return _sdd.sdd_exists(var, node, manager)
sdd_exists = _sdd.sdd_exists

def sdd_forall(var, node, manager):
    return _sdd.sdd_forall(var, node, manager)
sdd_forall = _sdd.sdd_forall

def sdd_minimize_cardinality(node, manager):
    return _sdd.sdd_minimize_cardinality(node, manager)
sdd_minimize_cardinality = _sdd.sdd_minimize_cardinality

def sdd_minimum_cardinality(node):
    return _sdd.sdd_minimum_cardinality(node)
sdd_minimum_cardinality = _sdd.sdd_minimum_cardinality

def sdd_model_count(node, manager):
    return _sdd.sdd_model_count(node, manager)
sdd_model_count = _sdd.sdd_model_count

def sdd_node_is_true(node):
    return _sdd.sdd_node_is_true(node)
sdd_node_is_true = _sdd.sdd_node_is_true

def sdd_node_is_false(node):
    return _sdd.sdd_node_is_false(node)
sdd_node_is_false = _sdd.sdd_node_is_false

def sdd_node_is_literal(node):
    return _sdd.sdd_node_is_literal(node)
sdd_node_is_literal = _sdd.sdd_node_is_literal

def sdd_node_is_decision(node):
    return _sdd.sdd_node_is_decision(node)
sdd_node_is_decision = _sdd.sdd_node_is_decision

def sdd_node_size(node):
    return _sdd.sdd_node_size(node)
sdd_node_size = _sdd.sdd_node_size

def sdd_node_literal(node):
    return _sdd.sdd_node_literal(node)
sdd_node_literal = _sdd.sdd_node_literal

def sdd_node_elements(node):
    return _sdd.sdd_node_elements(node)
sdd_node_elements = _sdd.sdd_node_elements

def sdd_node_set_bit(bit, node):
    return _sdd.sdd_node_set_bit(bit, node)
sdd_node_set_bit = _sdd.sdd_node_set_bit

def sdd_node_bit(node):
    return _sdd.sdd_node_bit(node)
sdd_node_bit = _sdd.sdd_node_bit

def sdd_id(node):
    return _sdd.sdd_id(node)
sdd_id = _sdd.sdd_id

def sdd_garbage_collected(node, id):
    return _sdd.sdd_garbage_collected(node, id)
sdd_garbage_collected = _sdd.sdd_garbage_collected

def sdd_vtree_of(node):
    return _sdd.sdd_vtree_of(node)
sdd_vtree_of = _sdd.sdd_vtree_of

def sdd_copy(node, dest_manager):
    return _sdd.sdd_copy(node, dest_manager)
sdd_copy = _sdd.sdd_copy

def sdd_rename_variables(node, variable_map, manager):
    return _sdd.sdd_rename_variables(node, variable_map, manager)
sdd_rename_variables = _sdd.sdd_rename_variables

def sdd_variables(node, manager):
    return _sdd.sdd_variables(node, manager)
sdd_variables = _sdd.sdd_variables

def sdd_read(filename, manager):
    return _sdd.sdd_read(filename, manager)
sdd_read = _sdd.sdd_read

def sdd_save(fname, node):
    return _sdd.sdd_save(fname, node)
sdd_save = _sdd.sdd_save

def sdd_save_as_dot(fname, node):
    return _sdd.sdd_save_as_dot(fname, node)
sdd_save_as_dot = _sdd.sdd_save_as_dot

def sdd_shared_save_as_dot(fname, manager):
    return _sdd.sdd_shared_save_as_dot(fname, manager)
sdd_shared_save_as_dot = _sdd.sdd_shared_save_as_dot

def sdd_count(node):
    return _sdd.sdd_count(node)
sdd_count = _sdd.sdd_count

def sdd_size(node):
    return _sdd.sdd_size(node)
sdd_size = _sdd.sdd_size

def sdd_shared_size(nodes, count):
    return _sdd.sdd_shared_size(nodes, count)
sdd_shared_size = _sdd.sdd_shared_size

def sdd_manager_size(manager):
    return _sdd.sdd_manager_size(manager)
sdd_manager_size = _sdd.sdd_manager_size

def sdd_manager_live_size(manager):
    return _sdd.sdd_manager_live_size(manager)
sdd_manager_live_size = _sdd.sdd_manager_live_size

def sdd_manager_dead_size(manager):
    return _sdd.sdd_manager_dead_size(manager)
sdd_manager_dead_size = _sdd.sdd_manager_dead_size

def sdd_manager_count(manager):
    return _sdd.sdd_manager_count(manager)
sdd_manager_count = _sdd.sdd_manager_count

def sdd_manager_live_count(manager):
    return _sdd.sdd_manager_live_count(manager)
sdd_manager_live_count = _sdd.sdd_manager_live_count

def sdd_manager_dead_count(manager):
    return _sdd.sdd_manager_dead_count(manager)
sdd_manager_dead_count = _sdd.sdd_manager_dead_count

def sdd_vtree_size(vtree):
    return _sdd.sdd_vtree_size(vtree)
sdd_vtree_size = _sdd.sdd_vtree_size

def sdd_vtree_live_size(vtree):
    return _sdd.sdd_vtree_live_size(vtree)
sdd_vtree_live_size = _sdd.sdd_vtree_live_size

def sdd_vtree_dead_size(vtree):
    return _sdd.sdd_vtree_dead_size(vtree)
sdd_vtree_dead_size = _sdd.sdd_vtree_dead_size

def sdd_vtree_count(vtree):
    return _sdd.sdd_vtree_count(vtree)
sdd_vtree_count = _sdd.sdd_vtree_count

def sdd_vtree_live_count(vtree):
    return _sdd.sdd_vtree_live_count(vtree)
sdd_vtree_live_count = _sdd.sdd_vtree_live_count

def sdd_vtree_dead_count(vtree):
    return _sdd.sdd_vtree_dead_count(vtree)
sdd_vtree_dead_count = _sdd.sdd_vtree_dead_count

def sdd_vtree_size_at(vtree):
    return _sdd.sdd_vtree_size_at(vtree)
sdd_vtree_size_at = _sdd.sdd_vtree_size_at

def sdd_vtree_live_size_at(vtree):
    return _sdd.sdd_vtree_live_size_at(vtree)
sdd_vtree_live_size_at = _sdd.sdd_vtree_live_size_at

def sdd_vtree_dead_size_at(vtree):
    return _sdd.sdd_vtree_dead_size_at(vtree)
sdd_vtree_dead_size_at = _sdd.sdd_vtree_dead_size_at

def sdd_vtree_count_at(vtree):
    return _sdd.sdd_vtree_count_at(vtree)
sdd_vtree_count_at = _sdd.sdd_vtree_count_at

def sdd_vtree_live_count_at(vtree):
    return _sdd.sdd_vtree_live_count_at(vtree)
sdd_vtree_live_count_at = _sdd.sdd_vtree_live_count_at

def sdd_vtree_dead_count_at(vtree):
    return _sdd.sdd_vtree_dead_count_at(vtree)
sdd_vtree_dead_count_at = _sdd.sdd_vtree_dead_count_at

def sdd_vtree_new(var_count, type):
    return _sdd.sdd_vtree_new(var_count, type)
sdd_vtree_new = _sdd.sdd_vtree_new

def sdd_vtree_new_with_var_order(var_count, var_order, type):
    return _sdd.sdd_vtree_new_with_var_order(var_count, var_order, type)
sdd_vtree_new_with_var_order = _sdd.sdd_vtree_new_with_var_order

def sdd_vtree_free(vtree):
    return _sdd.sdd_vtree_free(vtree)
sdd_vtree_free = _sdd.sdd_vtree_free

def sdd_vtree_save(fname, vtree):
    return _sdd.sdd_vtree_save(fname, vtree)
sdd_vtree_save = _sdd.sdd_vtree_save

def sdd_vtree_read(filename):
    return _sdd.sdd_vtree_read(filename)
sdd_vtree_read = _sdd.sdd_vtree_read

def sdd_vtree_save_as_dot(fname, vtree):
    return _sdd.sdd_vtree_save_as_dot(fname, vtree)
sdd_vtree_save_as_dot = _sdd.sdd_vtree_save_as_dot

def sdd_manager_vtree(manager):
    return _sdd.sdd_manager_vtree(manager)
sdd_manager_vtree = _sdd.sdd_manager_vtree

def sdd_manager_vtree_copy(manager):
    return _sdd.sdd_manager_vtree_copy(manager)
sdd_manager_vtree_copy = _sdd.sdd_manager_vtree_copy

def sdd_vtree_left(vtree):
    return _sdd.sdd_vtree_left(vtree)
sdd_vtree_left = _sdd.sdd_vtree_left

def sdd_vtree_right(vtree):
    return _sdd.sdd_vtree_right(vtree)
sdd_vtree_right = _sdd.sdd_vtree_right

def sdd_vtree_parent(vtree):
    return _sdd.sdd_vtree_parent(vtree)
sdd_vtree_parent = _sdd.sdd_vtree_parent

def sdd_vtree_is_leaf(vtree):
    return _sdd.sdd_vtree_is_leaf(vtree)
sdd_vtree_is_leaf = _sdd.sdd_vtree_is_leaf

def sdd_vtree_is_sub(vtree1, vtree2):
    return _sdd.sdd_vtree_is_sub(vtree1, vtree2)
sdd_vtree_is_sub = _sdd.sdd_vtree_is_sub

def sdd_vtree_lca(vtree1, vtree2, root):
    return _sdd.sdd_vtree_lca(vtree1, vtree2, root)
sdd_vtree_lca = _sdd.sdd_vtree_lca

def sdd_vtree_var_count(vtree):
    return _sdd.sdd_vtree_var_count(vtree)
sdd_vtree_var_count = _sdd.sdd_vtree_var_count

def sdd_vtree_var(vtree):
    return _sdd.sdd_vtree_var(vtree)
sdd_vtree_var = _sdd.sdd_vtree_var

def sdd_vtree_position(vtree):
    return _sdd.sdd_vtree_position(vtree)
sdd_vtree_position = _sdd.sdd_vtree_position

def sdd_vtree_location(vtree, manager):
    return _sdd.sdd_vtree_location(vtree, manager)
sdd_vtree_location = _sdd.sdd_vtree_location

def sdd_vtree_rotate_left(vtree, manager, time_limit, size_limit):
    return _sdd.sdd_vtree_rotate_left(vtree, manager, time_limit, size_limit)
sdd_vtree_rotate_left = _sdd.sdd_vtree_rotate_left

def sdd_vtree_rotate_right(vtree, manager, time_limit, size_limit, cartesian_product_limit):
    return _sdd.sdd_vtree_rotate_right(vtree, manager, time_limit, size_limit, cartesian_product_limit)
sdd_vtree_rotate_right = _sdd.sdd_vtree_rotate_right

def sdd_vtree_swap(vtree, manager, time_limit, size_limit, cartesian_product_limit):
    return _sdd.sdd_vtree_swap(vtree, manager, time_limit, size_limit, cartesian_product_limit)
sdd_vtree_swap = _sdd.sdd_vtree_swap

def sdd_manager_set_size_limit_context(vtree, manager):
    return _sdd.sdd_manager_set_size_limit_context(vtree, manager)
sdd_manager_set_size_limit_context = _sdd.sdd_manager_set_size_limit_context

def sdd_manager_update_size_limit_context(manager):
    return _sdd.sdd_manager_update_size_limit_context(manager)
sdd_manager_update_size_limit_context = _sdd.sdd_manager_update_size_limit_context

def sdd_vtree_bit(vtree):
    return _sdd.sdd_vtree_bit(vtree)
sdd_vtree_bit = _sdd.sdd_vtree_bit

def sdd_vtree_set_bit(bit, vtree):
    return _sdd.sdd_vtree_set_bit(bit, vtree)
sdd_vtree_set_bit = _sdd.sdd_vtree_set_bit

def sdd_vtree_data(vtree):
    return _sdd.sdd_vtree_data(vtree)
sdd_vtree_data = _sdd.sdd_vtree_data

def sdd_vtree_set_data(data, vtree):
    return _sdd.sdd_vtree_set_data(data, vtree)
sdd_vtree_set_data = _sdd.sdd_vtree_set_data

def sdd_vtree_search_state(vtree):
    return _sdd.sdd_vtree_search_state(vtree)
sdd_vtree_search_state = _sdd.sdd_vtree_search_state

def sdd_vtree_set_search_state(search_state, vtree):
    return _sdd.sdd_vtree_set_search_state(search_state, vtree)
sdd_vtree_set_search_state = _sdd.sdd_vtree_set_search_state

def sdd_ref_count(node):
    return _sdd.sdd_ref_count(node)
sdd_ref_count = _sdd.sdd_ref_count

def sdd_ref(node, manager):
    return _sdd.sdd_ref(node, manager)
sdd_ref = _sdd.sdd_ref

def sdd_deref(node, manager):
    return _sdd.sdd_deref(node, manager)
sdd_deref = _sdd.sdd_deref

def sdd_manager_garbage_collect(manager):
    return _sdd.sdd_manager_garbage_collect(manager)
sdd_manager_garbage_collect = _sdd.sdd_manager_garbage_collect

def sdd_vtree_garbage_collect(vtree, manager):
    return _sdd.sdd_vtree_garbage_collect(vtree, manager)
sdd_vtree_garbage_collect = _sdd.sdd_vtree_garbage_collect

def sdd_manager_garbage_collect_if(dead_node_threshold, manager):
    return _sdd.sdd_manager_garbage_collect_if(dead_node_threshold, manager)
sdd_manager_garbage_collect_if = _sdd.sdd_manager_garbage_collect_if

def sdd_vtree_garbage_collect_if(dead_node_threshold, vtree, manager):
    return _sdd.sdd_vtree_garbage_collect_if(dead_node_threshold, vtree, manager)
sdd_vtree_garbage_collect_if = _sdd.sdd_vtree_garbage_collect_if

def sdd_manager_minimize(manager):
    return _sdd.sdd_manager_minimize(manager)
sdd_manager_minimize = _sdd.sdd_manager_minimize

def sdd_vtree_minimize(vtree, manager):
    return _sdd.sdd_vtree_minimize(vtree, manager)
sdd_vtree_minimize = _sdd.sdd_vtree_minimize

def sdd_manager_set_lr_time_limit(time_limit, manager):
    return _sdd.sdd_manager_set_lr_time_limit(time_limit, manager)
sdd_manager_set_lr_time_limit = _sdd.sdd_manager_set_lr_time_limit

def sdd_manager_set_rr_time_limit(time_limit, manager):
    return _sdd.sdd_manager_set_rr_time_limit(time_limit, manager)
sdd_manager_set_rr_time_limit = _sdd.sdd_manager_set_rr_time_limit

def sdd_manager_set_sw_time_limit(time_limit, manager):
    return _sdd.sdd_manager_set_sw_time_limit(time_limit, manager)
sdd_manager_set_sw_time_limit = _sdd.sdd_manager_set_sw_time_limit

def sdd_manager_set_lr_size_limit(size_limit, manager):
    return _sdd.sdd_manager_set_lr_size_limit(size_limit, manager)
sdd_manager_set_lr_size_limit = _sdd.sdd_manager_set_lr_size_limit

def sdd_manager_set_rr_size_limit(size_limit, manager):
    return _sdd.sdd_manager_set_rr_size_limit(size_limit, manager)
sdd_manager_set_rr_size_limit = _sdd.sdd_manager_set_rr_size_limit

def sdd_manager_set_sw_size_limit(size_limit, manager):
    return _sdd.sdd_manager_set_sw_size_limit(size_limit, manager)
sdd_manager_set_sw_size_limit = _sdd.sdd_manager_set_sw_size_limit

def sdd_manager_set_rr_cartesian_product_limit(cartesian_product_limit, manager):
    return _sdd.sdd_manager_set_rr_cartesian_product_limit(cartesian_product_limit, manager)
sdd_manager_set_rr_cartesian_product_limit = _sdd.sdd_manager_set_rr_cartesian_product_limit

def sdd_manager_set_sw_cartesian_product_limit(cartesian_product_limit, manager):
    return _sdd.sdd_manager_set_sw_cartesian_product_limit(cartesian_product_limit, manager)
sdd_manager_set_sw_cartesian_product_limit = _sdd.sdd_manager_set_sw_cartesian_product_limit

def sdd_manager_set_convergence_threshold(threshold, manager):
    return _sdd.sdd_manager_set_convergence_threshold(threshold, manager)
sdd_manager_set_convergence_threshold = _sdd.sdd_manager_set_convergence_threshold

def sdd_manager_set_mip_minimize(manager):
    return _sdd.sdd_manager_set_mip_minimize(manager)
sdd_manager_set_mip_minimize = _sdd.sdd_manager_set_mip_minimize

def sdd_manager_mip_minimize(manager):
    return _sdd.sdd_manager_mip_minimize(manager)
sdd_manager_mip_minimize = _sdd.sdd_manager_mip_minimize

def sdd_manager_add_var_after_last_withtype(manager, b):
    return _sdd.sdd_manager_add_var_after_last_withtype(manager, b)
sdd_manager_add_var_after_last_withtype = _sdd.sdd_manager_add_var_after_last_withtype

def sdd_manager_manually_set_convergence_threshold(conv_threshold, manager):
    return _sdd.sdd_manager_manually_set_convergence_threshold(conv_threshold, manager)
sdd_manager_manually_set_convergence_threshold = _sdd.sdd_manager_manually_set_convergence_threshold

def sdd_manager_manually_set_lr_time_limit(time_limit, manager):
    return _sdd.sdd_manager_manually_set_lr_time_limit(time_limit, manager)
sdd_manager_manually_set_lr_time_limit = _sdd.sdd_manager_manually_set_lr_time_limit

def sdd_manager_manually_set_rr_time_limit(time_limit, manager):
    return _sdd.sdd_manager_manually_set_rr_time_limit(time_limit, manager)
sdd_manager_manually_set_rr_time_limit = _sdd.sdd_manager_manually_set_rr_time_limit

def sdd_manager_manually_set_sw_time_limit(time_limit, manager):
    return _sdd.sdd_manager_manually_set_sw_time_limit(time_limit, manager)
sdd_manager_manually_set_sw_time_limit = _sdd.sdd_manager_manually_set_sw_time_limit

def sdd_manager_manually_set_lr_size_limit(size_limit, manager):
    return _sdd.sdd_manager_manually_set_lr_size_limit(size_limit, manager)
sdd_manager_manually_set_lr_size_limit = _sdd.sdd_manager_manually_set_lr_size_limit

def sdd_manager_manually_set_rr_size_limit(size_limit, manager):
    return _sdd.sdd_manager_manually_set_rr_size_limit(size_limit, manager)
sdd_manager_manually_set_rr_size_limit = _sdd.sdd_manager_manually_set_rr_size_limit

def sdd_manager_manually_set_sw_size_limit(size_limit, manager):
    return _sdd.sdd_manager_manually_set_sw_size_limit(size_limit, manager)
sdd_manager_manually_set_sw_size_limit = _sdd.sdd_manager_manually_set_sw_size_limit

def sdd_manager_manually_set_rr_cartesian_product_limit(cartesian_product_limit, manager):
    return _sdd.sdd_manager_manually_set_rr_cartesian_product_limit(cartesian_product_limit, manager)
sdd_manager_manually_set_rr_cartesian_product_limit = _sdd.sdd_manager_manually_set_rr_cartesian_product_limit

def sdd_manager_manually_set_sw_cartesian_product_limit(cartesian_product_limit, manager):
    return _sdd.sdd_manager_manually_set_sw_cartesian_product_limit(cartesian_product_limit, manager)
sdd_manager_manually_set_sw_cartesian_product_limit = _sdd.sdd_manager_manually_set_sw_cartesian_product_limit

def sdd_manager_print_parameters(manager):
    return _sdd.sdd_manager_print_parameters(manager)
sdd_manager_print_parameters = _sdd.sdd_manager_print_parameters

def sdd_manager_reset_parameters(manager):
    return _sdd.sdd_manager_reset_parameters(manager)
sdd_manager_reset_parameters = _sdd.sdd_manager_reset_parameters

def wmc_manager_new(node, log_mode, manager):
    return _sdd.wmc_manager_new(node, log_mode, manager)
wmc_manager_new = _sdd.wmc_manager_new

def wmc_manager_free(wmc_manager):
    return _sdd.wmc_manager_free(wmc_manager)
wmc_manager_free = _sdd.wmc_manager_free

def wmc_set_literal_weight(literal, weight, wmc_manager):
    return _sdd.wmc_set_literal_weight(literal, weight, wmc_manager)
wmc_set_literal_weight = _sdd.wmc_set_literal_weight

def wmc_propagate(wmc_manager):
    return _sdd.wmc_propagate(wmc_manager)
wmc_propagate = _sdd.wmc_propagate

def wmc_zero_weight(wmc_manager):
    return _sdd.wmc_zero_weight(wmc_manager)
wmc_zero_weight = _sdd.wmc_zero_weight

def wmc_one_weight(wmc_manager):
    return _sdd.wmc_one_weight(wmc_manager)
wmc_one_weight = _sdd.wmc_one_weight

def wmc_literal_weight(literal, wmc_manager):
    return _sdd.wmc_literal_weight(literal, wmc_manager)
wmc_literal_weight = _sdd.wmc_literal_weight

def wmc_literal_derivative(literal, wmc_manager):
    return _sdd.wmc_literal_derivative(literal, wmc_manager)
wmc_literal_derivative = _sdd.wmc_literal_derivative

def wmc_literal_pr(literal, wmc_manager):
    return _sdd.wmc_literal_pr(literal, wmc_manager)
wmc_literal_pr = _sdd.wmc_literal_pr
# This file is compatible with both classic and new-style classes.


