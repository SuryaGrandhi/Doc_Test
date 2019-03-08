.. _ROCr-API:

ROCr API Documentation
#######################

Runtime Notification
---------------------
.. doxygenenum:: hsa_status_t
   :project: ROCr

.. doxygenfunction:: hsa_status_string()
   :project: ROCr


common definition
------------------

.. doxygenenum::  hsa_access_permission_t
   :project: ROCr

.. doxygenclass:: struct hsa_dim3_s
   :project: ROCr

.. doxygenfunction:: HSA_API hsa_init()
   :project: ROCr	

Initialization and Shut Down
-----------------------------

.. doxygenfunction:: HSA_API hsa_init()
   :project: ROCr	

.. doxygenfunction:: HSA_API hsa_shut_down()
   :project: ROCr	

System and Agent Information
-----------------------------
.. doxygenclass:: hsa_agent_s
   :project: ROCr

.. doxygenclass:: hsa_cache_s
   :project: ROCr

.. doxygentypedef::  hsa_agent_s hsa_agent_t
   :project: ROCr

.. doxygentypedef::  hsa_cache_s hsa_cache_t
   :project: ROCr

.. doxygenenum::  hsa_agent_feature_t
   :project: ROCr

.. doxygenenum:: hsa_agent_info_t
   :project: ROCr

.. doxygenenum:: hsa_cache_info_t
   :project: ROCr

.. doxygenenum:: hsa_default_float_rounding_mode_t
   :project: ROCr

.. doxygenenum:: hsa_device_type_t
   :project: ROCr

.. doxygenenum:: hsa_endianness_t
   :project: ROCr

.. doxygenenum:: hsa_exception_policy_t
   :project: ROCr

.. doxygenenum:: hsa_extension_t
   :project: ROCr

.. doxygenenum:: hsa_machine_model_t
   :project: ROCr

.. doxygenenum:: hsa_profile_t
   :project: ROCr

.. doxygenenum:: hsa_system_info_t
   :project: ROCr

.. doxygenfunction:: hsa_agent_get_info()
   :project: ROCr

.. doxygenfunction:: hsa_agent_iterate_caches()
   :project: ROCr 
 
.. doxygenfunction:: hsa_agent_major_extension_supported()
   :project: ROCr
 
.. doxygenfunction:: hsa_cache_get_info()
   :project: ROCr

.. doxygenfunction:: hsa_extension_get_name()
   :project: ROCr

.. doxygenfunction:: hsa_iterate_agents()
   :project: ROCr

.. doxygenfunction:: hsa_system_extension_supported()
   :project: ROCr

.. doxygenfunction:: hsa_system_get_info()
   :project: ROCr

.. doxygenfunction:: hsa_system_get_major_extension_table()
   :project: ROCr

.. doxygenfunction:: hsa_system_major_extension_supported()
   :project: ROCr

Signals
--------

.. doxygenclass:: hsa_signal_s
   :project: ROCr

.. doxygenclass:: hsa_signal_group_s
   :project: ROCr

.. doxygentypedef:: hsa_signal_t
   :project: ROCr

.. doxygentypedef:: hsa_signal_value_t
   :project: ROCr

.. doxygentypedef:: hsa_signal_group_t
   :project: ROCr

.. doxygenenum:: hsa_signal_condition_t
   :project: ROCr

.. doxygenenum:: hsa_wait_state_t
   :project: ROCr

.. doxygenfunction:: hsa_signal_add_relaxed()
   :project: ROCr

.. doxygenfunction:: hsa_signal_add_release()
   :project: ROCr

.. doxygenfunction:: hsa_signal_add_scacq_screl()
   :project: ROCr

.. doxygenfunction:: hsa_signal_add_scacquire()
   :project: ROCr

.. doxygenfunction:: hsa_signal_add_screlease()
   :project: ROCr

.. doxygenfunction:: hsa_signal_and_acq_rel()
   :project: ROCr

.. doxygenfunction:: hsa_signal_and_relaxed()
   :project: ROCr

.. doxygenfunction:: hsa_signal_and_scacq_screl()
   :project: ROCr


Memory
-------

.. doxygenclass:: hsa_region_s
   :project: ROCr

.. doxygentypedef:: hsa_region_t
   :project: ROCr

.. doxygenenum:: hsa_region_global_flag_t
   :project: ROCr

.. doxygenenum:: hsa_region_info_t
   :project: ROCr

.. doxygenenum:: hsa_region_segment_t
   :project: ROCr

.. doxygenfunction:: hsa_agent_iterate_regions()
   :project: ROCr

.. doxygenfunction:: hsa_memory_allocate()
   :project: ROCr

.. doxygenfunction:: hsa_memory_assign_agent()
   :project: ROCr

.. doxygenfunction:: hsa_memory_copy()
   :project: ROCr

.. doxygenfunction:: hsa_memory_deregister()
   :project: ROCr

.. doxygenfunction:: hsa_memory_free()
   :project: ROCr

.. doxygenfunction:: hsa_memory_register()
   :project: ROCr

.. doxygenfunction:: hsa_region_get_info()
   :project: ROCr

Queue
-------

.. doxygentypedef:: hsa_queue_t
   :project: ROCr

.. doxygenenum:: hsa_queue_feature_t
   :project: ROCr

.. doxygenenum:: hsa_queue_type_t
   :project: ROCr

.. doxygenfunction:: hsa_queue_add_write_index_acq_rel()
   :project: ROCr

.. doxygenfunction:: hsa_queue_add_write_index_acquire()
   :project: ROCr

.. doxygenfunction:: hsa_queue_add_write_index_relaxed()
   :project: ROCr

.. doxygenfunction:: hsa_queue_add_write_index_release()
   :project: ROCr

.. doxygenfunction:: hsa_queue_add_write_index_scacquire()
   :project: ROCr

.. doxygenfunction:: hsa_queue_add_write_index_screlease()
   :project: ROCr

.. doxygenfunction::  hsa_queue_cas_write_index_acq_rel()
   :project: ROCr

.. doxygenfunction::  hsa_queue_cas_write_index_acquire()
   :project: ROCr

.. doxygenfunction:: hsa_queue_cas_write_index_relaxed()
   :project: ROCr

.. doxygenfunction:: hsa_queue_cas_write_index_release()
   :project: ROCr

.. doxygenfunction:: hsa_queue_cas_write_index_scacq_screl()
   :project: ROCr

.. doxygenfunction:: hsa_queue_cas_write_index_scacquire()
   :project: ROCr

.. doxygenfunction:: hsa_queue_cas_write_index_screlease()
   :project: ROCr

.. doxygenfunction:: hsa_queue_create()
   :project: ROCr

.. doxygenfunction:: hsa_queue_destroy()
   :project: ROCr

.. doxygenfunction:: hsa_queue_inactivate()
   :project: ROCr

.. doxygenfunction:: hsa_queue_load_read_index_acquire()
   :project: ROCr

.. doxygenfunction:: hsa_queue_load_read_index_relaxed()
   :project: ROCr

.. doxygenfunction:: hsa_queue_load_read_index_scacquire()
   :project: ROCr

.. doxygenfunction::  hsa_queue_load_write_index_acquire()
   :project: ROCr

.. doxygenfunction:: hsa_queue_load_write_index_relaxed()
   :project: ROCr

.. doxygenfunction::  hsa_queue_load_write_index_scacquire()
   :project: ROCr

.. doxygenfunction:: hsa_queue_store_read_index_relaxed()
   :project: ROCr

.. doxygenfunction::  hsa_queue_store_read_index_release()
   :project: ROCr

.. doxygenfunction:: hsa_queue_store_read_index_screlease()
   :project: ROCr

.. doxygenfunction::  hsa_queue_store_write_index_relaxed()
   :project: ROCr

.. doxygenfunction:: hsa_queue_store_write_index_release()
   :project: ROCr

.. doxygenfunction:: hsa_queue_store_write_index_screlease()
   :project: ROCr

.. doxygenfunction:: hsa_soft_queue_create()
   :project: ROCr

Architected Queuing Language
------------------------------

.. doxygenclass:: hsa_kernel_dispatch_packet_s
   :project: ROCr

.. doxygenclass:: hsa_agent_dispatch_packet_s
   :project: ROCr

.. doxygenclass:: hsa_barrier_and_packet_s
   :project: ROCr

.. doxygenclass:: hsa_barrier_or_packet_s
   :project: ROCr

.. doxygentypedef:: hsa_kernel_dispatch_packet_t
   :project: ROCr

.. doxygentypedef:: hsa_agent_dispatch_packet_t
   :project: ROCr

.. doxygentypedef:: hsa_barrier_and_packet_t
   :project: ROCr

.. doxygentypedef:: hsa_barrier_or_packet_t
   :project: ROCr

.. doxygenenum:: hsa_fence_scope_t
   :project: ROCr

.. doxygenenum:: hsa_kernel_dispatch_packet_setup_t
   :project: ROCr

.. doxygenenum:: hsa_packet_header_t
   :project: ROCr

.. doxygenenum:: hsa_packet_header_width_t
   :project: ROCr

.. doxygenenum:: hsa_packet_type_t
   :project: ROCr

Instruction Set Architecture.
-------------------------------

.. doxygenenum:: hsa_flush_mode_t
   :project: ROCr

.. doxygenenum:: hsa_fp_type_t
   :project: ROCr

.. doxygenenum:: hsa_isa_info_t
   :project: ROCr

.. doxygenenum:: hsa_round_method_t
   :project: ROCr

.. doxygenenum:: hsa_wavefront_info_t
   :project: ROCr

.. doxygenfunction:: hsa_agent_iterate_isas()
   :project: ROCr

.. doxygenfunction:: hsa_isa_compatible()
   :project: ROCr

.. doxygenfunction:: hsa_isa_from_name()
   :project: ROCr

.. doxygenfunction:: hsa_isa_get_exception_policies()
   :project: ROCr

.. doxygenfunction:: hsa_isa_get_info()
   :project: ROCr

.. doxygenfunction:: hsa_isa_get_info_alt()
   :project: ROCr

.. doxygenfunction:: hsa_isa_get_round_method()
   :project: ROCr

.. doxygenfunction:: hsa_isa_iterate_wavefronts()
   :project: ROCr

.. doxygenfunction:: hsa_wavefront_get_info()
   :project: ROCr


Executable
------------

.. doxygentypedef:: hsa_executable_symbol_t
   :project: ROCr

.. doxygenenum:: hsa_executable_info_t
   :project: ROCr

.. doxygenenum:: hsa_executable_state_t
   :project: ROCr

.. doxygenenum:: hsa_executable_symbol_info_t
   :project: ROCr

.. doxygenenum:: hsa_symbol_kind_t
   :project: ROCr

.. doxygenenum:: hsa_symbol_linkage_t
   :project: ROCr

.. doxygenenum:: hsa_variable_allocation_t
   :project: ROCr

.. doxygenenum:: hsa_variable_segment_t
   :project: ROCr

.. doxygenfunction:: hsa_code_object_reader_create_from_file()
   :project: ROCr

.. doxygenfunction:: hsa_code_object_reader_create_from_memory()
   :project: ROCr

.. doxygenfunction:: hsa_code_object_reader_destroy()
   :project: ROCr

.. doxygenfunction:: hsa_executable_agent_global_variable_define()
   :project: ROCr

.. doxygenfunction:: hsa_executable_create()
   :project: ROCr

.. doxygenfunction:: hsa_executable_create_alt()
   :project: ROCr

.. doxygenfunction:: hsa_executable_destroy()
   :project: ROCr

.. doxygenfunction:: hsa_executable_freeze()
   :project: ROCr

.. doxygenfunction:: hsa_executable_get_info()
   :project: ROCr

.. doxygenfunction:: hsa_executable_get_symbol()
   :project: ROCr

.. doxygenfunction:: hsa_executable_get_symbol_by_name()
   :project: ROCr

.. doxygenfunction:: hsa_executable_global_variable_define()
   :project: ROCr

.. doxygenfunction:: hsa_executable_iterate_agent_symbols()
   :project: ROCr

.. doxygenfunction:: hsa_executable_iterate_program_symbols()
   :project: ROCr

.. doxygenfunction:: hsa_executable_iterate_symbols()
   :project: ROCr

.. doxygenfunction:: hsa_executable_load_agent_code_object()
   :project: ROCr

.. doxygenfunction:: hsa_executable_load_program_code_object()
   :project: ROCr

.. doxygenfunction:: hsa_executable_readonly_variable_define()
   :project: ROCr

.. doxygenfunction:: hsa_executable_symbol_get_info()
   :project: ROCr

.. doxygenfunction:: hsa_executable_validate()
   :project: ROCr

.. doxygenfunction:: hsa_executable_validate_alt()
   :project: ROCr


Code Objects (deprecated).
----------------------------
.. doxygentypedef:: hsa_callback_data_t
   :project: ROCr

.. doxygentypedef:: hsa_code_object_t
   :project: ROCr

.. doxygentypedef:: hsa_code_symbol_t
   :project: ROCr

.. doxygenenum::hsa_code_object_info_t
   :project: ROCr

.. doxygenenum:: hsa_code_object_type_t
   :project: ROCr

.. doxygenenum:: hsa_code_symbol_info_t
   :project: ROCr

.. doxygenfunction:: hsa_code_object_deserialize()
   :project: ROCr

.. doxygenfunction:: hsa_code_object_destroy()
   :project: ROCr

.. doxygenfunction:: hsa_code_object_get_info()
   :project: ROCr

.. doxygenfunction:: hsa_code_object_get_symbol()
   :project: ROCr

.. doxygenfunction:: hsa_code_object_get_symbol_from_name()
   :project: ROCr

.. doxygenfunction:: hsa_code_object_iterate_symbols()
   :project: ROCr

.. doxygenfunction:: hsa_code_object_serialize()
   :project: ROCr

.. doxygenfunction:: hsa_code_symbol_get_info()
   :project: ROCr

.. doxygenfunction:: hsa_executable_load_code_object()
   :project: ROCr

Finalization Extensions
------------------------

.. doxygenenum:: anonymous enum
   :project: ROCr


Finalization Program
-----------------------

.. doxygenenum:: hsa_ext_finalizer_call_convention_t
   :project: ROCr

.. doxygenenum:: hsa_ext_program_info_t
   :project: ROCr

.. doxygenfunction:: hsa_ext_program_add_module()
   :project: ROCr

.. doxygenfunction:: hsa_ext_program_create()
   :project: ROCr

.. doxygenfunction:: hsa_ext_program_destroy()
   :project: ROCr

.. doxygenfunction:: hsa_ext_program_finalize()
   :project: ROCr

.. doxygenfunction:: hsa_ext_program_get_info()
   :project: ROCr

.. doxygenfunction:: hsa_ext_program_iterate_modules()
   :project: ROCr

Images and Samplers
----------------------

.. doxygenenum:: anonymous enum
   :project: ROCr






























