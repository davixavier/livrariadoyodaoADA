pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E070 : Short_Integer; pragma Import (Ada, E070, "system__os_lib_E");
   E011 : Short_Integer; pragma Import (Ada, E011, "system__soft_links_E");
   E023 : Short_Integer; pragma Import (Ada, E023, "system__exception_table_E");
   E066 : Short_Integer; pragma Import (Ada, E066, "ada__io_exceptions_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "ada__strings_E");
   E038 : Short_Integer; pragma Import (Ada, E038, "ada__containers_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exceptions_E");
   E076 : Short_Integer; pragma Import (Ada, E076, "interfaces__c_E");
   E052 : Short_Integer; pragma Import (Ada, E052, "ada__strings__maps_E");
   E056 : Short_Integer; pragma Import (Ada, E056, "ada__strings__maps__constants_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "system__soft_links__initialize_E");
   E078 : Short_Integer; pragma Import (Ada, E078, "system__object_reader_E");
   E045 : Short_Integer; pragma Import (Ada, E045, "system__dwarf_lines_E");
   E037 : Short_Integer; pragma Import (Ada, E037, "system__traceback__symbolic_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "ada__tags_E");
   E118 : Short_Integer; pragma Import (Ada, E118, "ada__streams_E");
   E135 : Short_Integer; pragma Import (Ada, E135, "system__file_control_block_E");
   E120 : Short_Integer; pragma Import (Ada, E120, "system__finalization_root_E");
   E116 : Short_Integer; pragma Import (Ada, E116, "ada__finalization_E");
   E134 : Short_Integer; pragma Import (Ada, E134, "system__file_io_E");
   E147 : Short_Integer; pragma Import (Ada, E147, "ada__streams__stream_io_E");
   E122 : Short_Integer; pragma Import (Ada, E122, "system__storage_pools_E");
   E113 : Short_Integer; pragma Import (Ada, E113, "system__finalization_masters_E");
   E111 : Short_Integer; pragma Import (Ada, E111, "system__storage_pools__subpools_E");
   E097 : Short_Integer; pragma Import (Ada, E097, "ada__strings__unbounded_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "ada__text_io_E");
   E139 : Short_Integer; pragma Import (Ada, E139, "system__pool_global_E");
   E143 : Short_Integer; pragma Import (Ada, E143, "livrodef_E");
   E137 : Short_Integer; pragma Import (Ada, E137, "livrariadef_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E137 := E137 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "livrariadef__finalize_spec");
      begin
         F1;
      end;
      E143 := E143 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "livrodef__finalize_spec");
      begin
         F2;
      end;
      E139 := E139 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "system__pool_global__finalize_spec");
      begin
         F3;
      end;
      E130 := E130 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "ada__text_io__finalize_spec");
      begin
         F4;
      end;
      E097 := E097 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "ada__strings__unbounded__finalize_spec");
      begin
         F5;
      end;
      E111 := E111 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__storage_pools__subpools__finalize_spec");
      begin
         F6;
      end;
      E113 := E113 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "system__finalization_masters__finalize_spec");
      begin
         F7;
      end;
      E147 := E147 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "ada__streams__stream_io__finalize_spec");
      begin
         F8;
      end;
      declare
         procedure F9;
         pragma Import (Ada, F9, "system__file_io__finalize_body");
      begin
         E134 := E134 - 1;
         F9;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E023 := E023 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E066 := E066 + 1;
      Ada.Strings'Elab_Spec;
      E050 := E050 + 1;
      Ada.Containers'Elab_Spec;
      E038 := E038 + 1;
      System.Exceptions'Elab_Spec;
      E025 := E025 + 1;
      Interfaces.C'Elab_Spec;
      System.Os_Lib'Elab_Body;
      E070 := E070 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E056 := E056 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E019 := E019 + 1;
      E011 := E011 + 1;
      System.Object_Reader'Elab_Spec;
      System.Dwarf_Lines'Elab_Spec;
      E045 := E045 + 1;
      E076 := E076 + 1;
      E052 := E052 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E037 := E037 + 1;
      E078 := E078 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E101 := E101 + 1;
      Ada.Streams'Elab_Spec;
      E118 := E118 + 1;
      System.File_Control_Block'Elab_Spec;
      E135 := E135 + 1;
      System.Finalization_Root'Elab_Spec;
      E120 := E120 + 1;
      Ada.Finalization'Elab_Spec;
      E116 := E116 + 1;
      System.File_Io'Elab_Body;
      E134 := E134 + 1;
      Ada.Streams.Stream_Io'Elab_Spec;
      E147 := E147 + 1;
      System.Storage_Pools'Elab_Spec;
      E122 := E122 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E113 := E113 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E111 := E111 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E097 := E097 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E130 := E130 + 1;
      System.Pool_Global'Elab_Spec;
      E139 := E139 + 1;
      Livrodef'Elab_Spec;
      Livrodef'Elab_Body;
      E143 := E143 + 1;
      Livrariadef'Elab_Spec;
      Livrariadef'Elab_Body;
      E137 := E137 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_main");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   C:\Users\DAVI-DESKTOP\Documents\GitHub\livrariadoyodaoADA\obj\livrodef.o
   --   C:\Users\DAVI-DESKTOP\Documents\GitHub\livrariadoyodaoADA\obj\livrariadef.o
   --   C:\Users\DAVI-DESKTOP\Documents\GitHub\livrariadoyodaoADA\obj\main.o
   --   -LC:\Users\DAVI-DESKTOP\Documents\GitHub\livrariadoyodaoADA\obj\
   --   -LC:\Users\DAVI-DESKTOP\Documents\GitHub\livrariadoyodaoADA\obj\
   --   -LC:/gnat/2018/lib/gcc/x86_64-pc-mingw32/7.3.1/adalib/
   --   -static
   --   -lgnat
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
