######################################################
#                                                    #
# Automatic generated Makefile for Visual Components #
#                                                    #
#                  Do NOT edit!                      #
#                                                    #
######################################################

VCC:=@'$(AS_BIN_PATH)/br.vc.pc.exe'
LINK:=@'$(AS_BIN_PATH)/BR.VC.Link.exe'
MODGEN:=@'$(AS_BIN_PATH)/BR.VC.ModGen.exe'
VCPL:=@'$(AS_BIN_PATH)/BR.VC.PL.exe'
VCHWPP:=@'$(AS_BIN_PATH)/BR.VC.HWPP.exe'
VCDEP:=@'$(AS_BIN_PATH)/BR.VC.Depend.exe'
VCFLGEN:=@'$(AS_BIN_PATH)/BR.VC.lfgen.exe'
VCREFHANDLER:=@'$(AS_BIN_PATH)/BR.VC.CrossReferenceHandler.exe'
VCXREFEXTENDER:=@'$(AS_BIN_PATH)/BR.AS.CrossRefVCExtender.exe'
RM=CMD /C DEL
PALFILE_GUI=$(AS_PROJECT_PATH)/Logical/GUI/Palette.vcr
VCCFLAGS_GUI=-server -proj GUI -vc '$(AS_PROJECT_PATH)/Logical/GUI/VCObject.vc' -prj_path '$(AS_PROJECT_PATH)' -temp_path '$(AS_TEMP_PATH)' -cfg $(AS_CONFIGURATION) -plc $(AS_PLC) -plctemp $(AS_TEMP_PLC) -cpu_path '$(AS_CPU_PATH)'
VCFIRMWARE=4.52.0
VCFIRMWAREPATH=$(AS_VC_PATH)/Firmware/V4.52.0/SG4
VCOBJECT_GUI=$(AS_PROJECT_PATH)/Logical/GUI/VCObject.vc
VCSTARTUP='vcstart.br'
VCLOD='vclod.br'
VCSTPOST='vcstpost.br'
TARGET_FILE_GUI=$(AS_CPU_PATH)/GUI.br
OBJ_SCOPE_GUI=
PRJ_PATH_GUI=$(AS_PROJECT_PATH)
SRC_PATH_GUI=$(AS_PROJECT_PATH)/Logical/$(OBJ_SCOPE_GUI)/GUI
TEMP_PATH_GUI=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/GUI
TEMP_PATH_Shared=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared
TEMP_PATH_ROOT_GUI=$(AS_TEMP_PATH)
VC_LIBRARY_LIST_GUI=$(TEMP_PATH_GUI)/libraries.vci
VC_XREF_BUILDFILE_GUI=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.build
VC_XREF_CLEANFILE=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.clean
VC_LANGUAGES_GUI=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr
CPUHWC='$(TEMP_PATH_GUI)/cpuhwc.vci'
VC_STATIC_OPTIONS_GUI='$(TEMP_PATH_GUI)/vcStaticOptions.xml'
VC_STATIC_OPTIONS_Shared='$(TEMP_PATH_Shared)/vcStaticOptions.xml'
# include Shared and Font Makefile (only once)
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCFntDat/Font_GUI.mak
ifneq ($(VCINC),1)
	VCINC=1
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VCShared.mak
endif

DEPENDENCIES_GUI=-d vcgclass -profile 'False'
DEFAULT_STYLE_SHEET_GUI='Source[local].StyleSheet[Color]'
SHARED_MODULE=$(TEMP_PATH_ROOT_GUI)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcshared.br
LFNTFLAGS_GUI=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)'
BDRFLAGS_GUI=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)'

# Local Libs
LIB_LOCAL_OBJ_GUI=$(TEMP_PATH_GUI)/localobj.vca

# Hardware sources
PANEL_HW_OBJECT_GUI=$(TEMP_PATH_ROOT_GUI)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/GUI/dis.Hardware.vco
PANEL_HW_VCI_GUI=$(TEMP_PATH_ROOT_GUI)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/GUI/dis.Hardware.vci
PANEL_HW_SOURCE_GUI=C:/Projects/Lab3/Physical/Real/Hardware.hw 
DIS_OBJECTS_GUI=$(PANEL_HW_OBJECT_GUI) $(KEYMAP_OBJECTS_GUI)

# KeyMapping flags
KEYMAP_SOURCES_GUI=
KEYMAP_OBJECTS_GUI=

# All Source Objects
FNINFO_SOURCES_GUI=$(AS_PROJECT_PATH)/Logical/GUI/Fonts/DefaultFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Fonts/Arial10pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Fonts/Arial12px.fninfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Fonts/Arial9pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Fonts/Arial9pxValue.fninfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Fonts/Arial9px.fninfo 

BMINFO_SOURCES_GUI=$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AcknowledgeReset.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmActive.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmBypassOFF.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmBypassON.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmInactive.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmLatched.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmNotQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadQVGA1.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadQVGA1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadQVGA2.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadQVGA2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadQVGA3.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadQVGA3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadVGA_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/EditPadVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/EditPadVGA_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/ListPadHor.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/ListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/ListPadVer.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/ListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/NumPad.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/NumPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/ProgressBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/ResetAcknowledge.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/Reset.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/Triggered.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/arrow.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/backward_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/backward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/control_button_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/control_button_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/down_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/down_active_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/down_pressed_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/forward_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/forward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/frame_header.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/global_area_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/global_area_gradient_downside.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/global_area_gradient_upside.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/global_area_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/left_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/left_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/logo.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/multi_down_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/multi_down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/multi_up_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/multi_up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/right_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/right_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/up_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/up_active_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/up_pressed_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneAlphaPadQVGA1_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneAlphaPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneAlphaPad_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneEditPadQVGA3_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneEditPadVga_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneEditPadVga_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneEditpadQVGA2_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneListPadHor_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneListPadVer_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneNumPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneNumPad_released.bminfo 

BMGRP_SOURCES_GUI=$(AS_PROJECT_PATH)/Logical/GUI/BitmapGroups/AcknowledgeState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/GUI/BitmapGroups/AlarmEvent.bmgrp \
	$(AS_PROJECT_PATH)/Logical/GUI/BitmapGroups/AlarmState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/GUI/BitmapGroups/AlphaPadQVGA.bmgrp \
	$(AS_PROJECT_PATH)/Logical/GUI/BitmapGroups/AlphaPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/GUI/BitmapGroups/Borders.bmgrp \
	$(AS_PROJECT_PATH)/Logical/GUI/BitmapGroups/BypassState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/GUI/BitmapGroups/NavigationPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/GUI/BitmapGroups/NumPad.bmgrp 

PAGE_SOURCES_GUI=$(AS_PROJECT_PATH)/Logical/GUI/Pages/P2_HelpPage.page \
	$(AS_PROJECT_PATH)/Logical/GUI/Pages/P1_InitPage.page \
	$(AS_PROJECT_PATH)/Logical/GUI/Pages/P3_ModePage.page \
	$(AS_PROJECT_PATH)/Logical/GUI/Pages/P4_PathPage.page 

VCS_SOURCES_GUI=$(AS_PROJECT_PATH)/Logical/GUI/StyleSheets/Color.vcs \
	$(AS_PROJECT_PATH)/Logical/GUI/StyleSheets/Gray.vcs 

BDR_SOURCES_GUI=$(AS_PROJECT_PATH)/Logical/GUI/Borders/Bump.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/Etched.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/Flat_black.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/Flat_grey.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/RaisedInner.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/Raised.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/SunkenOuter.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/Sunken.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/BackwardActive.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/BackwardPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/ControlActive.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/ControlPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/DownActiveControl.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/DownPressedControl.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/ForwardActive.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/ForwardPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/FrameHeader.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/GlobalAreaActive.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/GlobalAreaPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/MultiScrollDownActive.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/MultiScrollDownPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/MultiScrollUpActive.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/MultiScrollUpPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/ProgressBarBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/ScrollDownActive.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/ScrollDownPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/ScrollLeftActive.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/ScrollLeftPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/ScrollRightActive.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/ScrollRightPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/ScrollUpActive.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/ScrollUpPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/UpActiveControl.bdr \
	$(AS_PROJECT_PATH)/Logical/GUI/Borders/UpPressedControl.bdr 

TPR_SOURCES_GUI=$(AS_PROJECT_PATH)/Logical/GUI/TouchPads/AlphaPadQVGA.tpr \
	$(AS_PROJECT_PATH)/Logical/GUI/TouchPads/AlphaPad.tpr \
	$(AS_PROJECT_PATH)/Logical/GUI/TouchPads/EditPad.tpr \
	$(AS_PROJECT_PATH)/Logical/GUI/TouchPads/NavigationPad_hor.tpr \
	$(AS_PROJECT_PATH)/Logical/GUI/TouchPads/NavigationPad_ver.tpr \
	$(AS_PROJECT_PATH)/Logical/GUI/TouchPads/NumPad.tpr 

TDC_SOURCES_GUI=$(AS_PROJECT_PATH)/Logical/GUI/Trends/TrendData.tdc 

VCVK_SOURCES_GUI=$(AS_PROJECT_PATH)/Logical/GUI/VirtualKeys.vcvk 

VCR_SOURCES_GUI=$(AS_PROJECT_PATH)/Logical/GUI/Palette.vcr 

# Runtime Object sources
VCR_OBJECT_GUI=$(TEMP_PATH_GUI)/vcrt.vco
VCR_SOURCE_GUI=$(SRC_PATH_GUI)/package.vcp
# All Source Objects END

#Panel Hardware
$(PANEL_HW_VCI_GUI): $(PANEL_HW_SOURCE_GUI) $(VC_LIBRARY_LIST_GUI) $(KEYMAP_SOURCES_GUI)
	$(VCHWPP) -f '$<' -o '$@' -n GUI -d GUI -pal '$(PALFILE_GUI)' -c '$(AS_CONFIGURATION)' -p '$(AS_PLC)' -ptemp '$(AS_TEMP_PLC)' -B 'D4.52' -L '' -verbose 'False' -profile 'False' -hw '$(CPUHWC)' -warninglevel 2 -so $(VC_STATIC_OPTIONS_GUI) -sos $(VC_STATIC_OPTIONS_Shared) -fp '$(AS_VC_PATH)/Firmware/V4.52.0/SG4' -sfas -prj '$(AS_PROJECT_PATH)' -apj 'Lab3' -vcob '$(VCOBJECT_GUI)'

$(PANEL_HW_OBJECT_GUI): $(PANEL_HW_VCI_GUI) $(PALFILE_GUI) $(VC_LIBRARY_LIST_GUI)
	$(VCC) -f '$(subst .vco,.vci,$@)' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -k '$(VCVK_SOURCES_GUI)' $(VCCFLAGS_GUI) -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


# Pages
PAGE_OBJECTS_GUI = $(addprefix $(TEMP_PATH_GUI)/page., $(notdir $(PAGE_SOURCES_GUI:.page=.vco)))

$(TEMP_PATH_GUI)/page.P2_HelpPage.vco: $(AS_PROJECT_PATH)/Logical/GUI/Pages/P2_HelpPage.page $(VC_LANGUAGES_GUI)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_GUI)/StyleSheets/Color.vcs' -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/page.P1_InitPage.vco: $(AS_PROJECT_PATH)/Logical/GUI/Pages/P1_InitPage.page $(VC_LANGUAGES_GUI)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_GUI)/StyleSheets/Color.vcs' -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/page.P3_ModePage.vco: $(AS_PROJECT_PATH)/Logical/GUI/Pages/P3_ModePage.page $(VC_LANGUAGES_GUI)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_GUI)/StyleSheets/Color.vcs' -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/page.P4_PathPage.vco: $(AS_PROJECT_PATH)/Logical/GUI/Pages/P4_PathPage.page $(VC_LANGUAGES_GUI)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_GUI)/StyleSheets/Color.vcs' -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


#Pages END




# Stylesheets
VCS_OBJECTS_GUI = $(addprefix $(TEMP_PATH_GUI)/vcs., $(notdir $(VCS_SOURCES_GUI:.vcs=.vco)))

$(TEMP_PATH_GUI)/vcs.Color.vco: $(AS_PROJECT_PATH)/Logical/GUI/StyleSheets/Color.vcs
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI) -P '$(AS_PROJECT_PATH)' -ds $(DEFAULT_STYLE_SHEET_GUI) -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/vcs.Gray.vco: $(AS_PROJECT_PATH)/Logical/GUI/StyleSheets/Gray.vcs
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI) -P '$(AS_PROJECT_PATH)' -ds $(DEFAULT_STYLE_SHEET_GUI) -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


#Stylesheets END




# Virtual Keys
VCVK_OBJECTS_GUI = $(addprefix $(TEMP_PATH_GUI)/vcvk., $(notdir $(VCVK_SOURCES_GUI:.vcvk=.vco)))

$(TEMP_PATH_GUI)/vcvk.VirtualKeys.vco: $(AS_PROJECT_PATH)/Logical/GUI/VirtualKeys.vcvk
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas

$(VCVK_OBJECTS_GUI): $(VC_LANGUAGES_GUI)

#Virtual Keys END




# Touch Pads
TPR_OBJECTS_GUI = $(addprefix $(TEMP_PATH_GUI)/tpr., $(notdir $(TPR_SOURCES_GUI:.tpr=.vco)))

$(TEMP_PATH_GUI)/tpr.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/GUI/TouchPads/AlphaPadQVGA.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI) -prj 'C:/Projects/Lab3/Logical/GUI' -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/tpr.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/GUI/TouchPads/AlphaPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI) -prj 'C:/Projects/Lab3/Logical/GUI' -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/tpr.EditPad.vco: $(AS_PROJECT_PATH)/Logical/GUI/TouchPads/EditPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI) -prj 'C:/Projects/Lab3/Logical/GUI' -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/tpr.NavigationPad_hor.vco: $(AS_PROJECT_PATH)/Logical/GUI/TouchPads/NavigationPad_hor.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI) -prj 'C:/Projects/Lab3/Logical/GUI' -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/tpr.NavigationPad_ver.vco: $(AS_PROJECT_PATH)/Logical/GUI/TouchPads/NavigationPad_ver.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI) -prj 'C:/Projects/Lab3/Logical/GUI' -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/tpr.NumPad.vco: $(AS_PROJECT_PATH)/Logical/GUI/TouchPads/NumPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI) -prj 'C:/Projects/Lab3/Logical/GUI' -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


#Touch Pads END




# BitmapGroups
BMGRP_OBJECTS_GUI = $(addprefix $(TEMP_PATH_GUI)/bmgrp., $(notdir $(BMGRP_SOURCES_GUI:.bmgrp=.vco)))

$(TEMP_PATH_GUI)/bmgrp.AcknowledgeState.vco: $(AS_PROJECT_PATH)/Logical/GUI/BitmapGroups/AcknowledgeState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bmgrp.AlarmEvent.vco: $(AS_PROJECT_PATH)/Logical/GUI/BitmapGroups/AlarmEvent.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bmgrp.AlarmState.vco: $(AS_PROJECT_PATH)/Logical/GUI/BitmapGroups/AlarmState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bmgrp.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/GUI/BitmapGroups/AlphaPadQVGA.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bmgrp.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/GUI/BitmapGroups/AlphaPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bmgrp.Borders.vco: $(AS_PROJECT_PATH)/Logical/GUI/BitmapGroups/Borders.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bmgrp.BypassState.vco: $(AS_PROJECT_PATH)/Logical/GUI/BitmapGroups/BypassState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bmgrp.NavigationPad.vco: $(AS_PROJECT_PATH)/Logical/GUI/BitmapGroups/NavigationPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bmgrp.NumPad.vco: $(AS_PROJECT_PATH)/Logical/GUI/BitmapGroups/NumPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


#BitmapGroups END




# Bitmaps
BMINFO_OBJECTS_GUI = $(addprefix $(TEMP_PATH_GUI)/bminfo., $(notdir $(BMINFO_SOURCES_GUI:.bminfo=.vco)))

$(TEMP_PATH_GUI)/bminfo.AcknowledgeReset.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AcknowledgeReset.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AcknowledgeReset.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.AlarmActive.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmActive.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmActive.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.AlarmBypassOFF.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmBypassOFF.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmBypassOFF.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.AlarmBypassON.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmBypassON.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmBypassON.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.AlarmInactive.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmInactive.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmInactive.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.AlarmLatched.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmLatched.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmLatched.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.AlarmNotQuit.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmNotQuit.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmNotQuit.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.AlarmQuit.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmQuit.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlarmQuit.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.AlphaPadQVGA1.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadQVGA1.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadQVGA1.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.AlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadQVGA1_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.AlphaPadQVGA2.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadQVGA2.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadQVGA2.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.AlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadQVGA2_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.AlphaPadQVGA3.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadQVGA3.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadQVGA3.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.AlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadQVGA3_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.AlphaPadVGA.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadVGA.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.AlphaPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/AlphaPadVGA_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.EditPadVGA.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/EditPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/EditPadVGA.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.EditPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/EditPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/EditPadVGA_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.ListPadHor.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/ListPadHor.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/ListPadHor.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.ListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/ListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/ListPadHor_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.ListPadVer.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/ListPadVer.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/ListPadVer.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.ListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/ListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/ListPadVer_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.NumPad.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/NumPad.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/NumPad.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.NumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/NumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/NumPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.ProgressBorder.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/ProgressBorder.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/ProgressBorder.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.ResetAcknowledge.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/ResetAcknowledge.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/ResetAcknowledge.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.Reset.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/Reset.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/Reset.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.Triggered.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/Triggered.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/Triggered.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.arrow.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/arrow.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/arrow.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.backward_active.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/backward_active.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/backward_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.backward_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/backward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/backward_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.control_button_active.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/control_button_active.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/control_button_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.control_button_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/control_button_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/control_button_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.down_active.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/down_active.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/down_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.down_active_control.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/down_active_control.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/down_active_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.down_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/down_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.down_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/down_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/down_pressed_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.forward_active.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/forward_active.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/forward_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.forward_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/forward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/forward_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.frame_header.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/frame_header.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/frame_header.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.global_area_active.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/global_area_active.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/global_area_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.global_area_gradient_downside.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/global_area_gradient_downside.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/global_area_gradient_downside.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.global_area_gradient_upside.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/global_area_gradient_upside.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/global_area_gradient_upside.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.global_area_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/global_area_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/global_area_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.left_active.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/left_active.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/left_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.left_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/left_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/left_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.logo.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/logo.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/logo.jpg
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.multi_down_active.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/multi_down_active.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/multi_down_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.multi_down_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/multi_down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/multi_down_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.multi_up_active.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/multi_up_active.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/multi_up_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.multi_up_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/multi_up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/multi_up_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.right_active.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/right_active.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/right_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.right_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/right_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/right_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.up_active.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/up_active.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/up_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.up_active_control.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/up_active_control.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/up_active_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.up_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/up_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.up_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/up_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/up_pressed_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.zuneAlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneAlphaPadQVGA1_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.zuneAlphaPadQVGA1_released.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneAlphaPadQVGA1_released.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneAlphaPadQVGA1_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.zuneAlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneAlphaPadQVGA2_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.zuneAlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneAlphaPadQVGA3_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.zuneAlphaPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneAlphaPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneAlphaPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.zuneAlphaPad_released.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneAlphaPad_released.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneAlphaPad_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.zuneEditPadQVGA3_released.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneEditPadQVGA3_released.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneEditPadQVGA3_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.zuneEditPadVga_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneEditPadVga_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneEditPadVga_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.zuneEditPadVga_released.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneEditPadVga_released.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneEditPadVga_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.zuneEditpadQVGA2_released.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneEditpadQVGA2_released.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneEditpadQVGA2_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.zuneListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneListPadHor_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.zuneListPadHor_released.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneListPadHor_released.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneListPadHor_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.zuneListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneListPadVer_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.zuneListPadVer_released.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneListPadVer_released.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneListPadVer_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.zuneNumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneNumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneNumPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


$(TEMP_PATH_GUI)/bminfo.zuneNumPad_released.vco: $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneNumPad_released.bminfo $(AS_PROJECT_PATH)/Logical/GUI/Bitmaps/zuneNumPad_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


#Bitmaps END




# Trend Data Configuration
TDC_OBJECTS_GUI = $(addprefix $(TEMP_PATH_GUI)/tdc., $(notdir $(TDC_SOURCES_GUI:.tdc=.vco)))

$(TEMP_PATH_GUI)/tdc.TrendData.vco: $(AS_PROJECT_PATH)/Logical/GUI/Trends/TrendData.tdc
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUI)' $(VCCFLAGS_GUI)  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas


#Trend Data Configuration END


#
# Borders
#
BDR_SOURCES_GUI=$(AS_PROJECT_PATH)/Logical/GUI/Borders/Bump.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/Etched.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/Flat_black.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/Flat_grey.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/RaisedInner.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/Raised.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/SunkenOuter.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/Sunken.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/BackwardActive.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/BackwardPressed.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/ControlActive.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/ControlPressed.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/DownActiveControl.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/DownPressedControl.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/ForwardActive.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/ForwardPressed.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/FrameHeader.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/GlobalAreaActive.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/GlobalAreaPressed.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/MultiScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/MultiScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/MultiScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/MultiScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/ProgressBarBorder.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/ScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/ScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/ScrollLeftActive.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/ScrollLeftPressed.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/ScrollRightActive.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/ScrollRightPressed.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/ScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/ScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/UpActiveControl.bdr $(AS_PROJECT_PATH)/Logical/GUI/Borders/UpPressedControl.bdr 
BDR_OBJECTS_GUI=$(TEMP_PATH_GUI)/bdr.Bordermanager.vco
$(TEMP_PATH_GUI)/bdr.Bordermanager.vco: $(BDR_SOURCES_GUI)
	$(VCC) -f '$<' -o '$@' -pkg '$(SRC_PATH_GUI)' $(BDRFLAGS_GUI) $(VCCFLAGS_GUI) -p GUI$(SRC_PATH_GUI)
#
# Logical fonts
#
$(TEMP_PATH_GUI)/lfnt.en.vco: $(TEMP_PATH_GUI)/en.lfnt $(VC_LANGUAGES_GUI)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_GUI) $(VCCFLAGS_GUI) -p GUI -sfas
$(TEMP_PATH_GUI)/lfnt.de.vco: $(TEMP_PATH_GUI)/de.lfnt $(VC_LANGUAGES_GUI)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_GUI) $(VCCFLAGS_GUI) -p GUI -sfas
LFNT_OBJECTS_GUI=$(TEMP_PATH_GUI)/lfnt.en.vco $(TEMP_PATH_GUI)/lfnt.de.vco 

#Runtime Object
$(VCR_OBJECT_GUI) : $(VCR_SOURCE_GUI)
	$(VCC) -f '$<' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -sl en $(VCCFLAGS_GUI) -rt  -p GUI -so $(VC_STATIC_OPTIONS_GUI) -vcr 4520 -sfas
# Local resources Library rules
LIB_LOCAL_RES_GUI=$(TEMP_PATH_GUI)/localres.vca
$(LIB_LOCAL_RES_GUI) : $(TEMP_PATH_GUI)/GUI02.ccf

# Bitmap Library rules
LIB_BMP_RES_GUI=$(TEMP_PATH_GUI)/bmpres.vca
$(LIB_BMP_RES_GUI) : $(TEMP_PATH_GUI)/GUI03.ccf
$(BMGRP_OBJECTS_GUI) : $(PALFILE_GUI) $(VC_LANGUAGES_GUI)
$(BMINFO_OBJECTS_GUI) : $(PALFILE_GUI)

BUILD_FILE_GUI=$(TEMP_PATH_GUI)/BuildFiles.arg
$(BUILD_FILE_GUI) : BUILD_FILE_CLEAN_GUI $(BUILD_SOURCES_GUI)
BUILD_FILE_CLEAN_GUI:
	$(RM) /F /Q '$(BUILD_FILE_GUI)' 2>nul
#All Modules depending to this project
PROJECT_MODULES_GUI=$(AS_CPU_PATH)/GUI01.br $(AS_CPU_PATH)/GUI02.br $(AS_CPU_PATH)/GUI03.br $(FONT_MODULES_GUI) $(SHARED_MODULE)

# General Build rules

$(TARGET_FILE_GUI): $(PROJECT_MODULES_GUI) $(TEMP_PATH_GUI)/GUI.prj
	$(MODGEN) -so $(VC_STATIC_OPTIONS_GUI) -fw '$(VCFIRMWAREPATH)' -m $(VCSTPOST) -v V1.00.0 -f '$(TEMP_PATH_GUI)/GUI.prj' -o '$@' -vc '$(VCOBJECT_GUI)' $(DEPENDENCIES_GUI) $(addprefix -d ,$(notdir $(PROJECT_MODULES_GUI:.br=)))

$(AS_CPU_PATH)/GUI01.br: $(TEMP_PATH_GUI)/GUI01.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_GUI) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_GUI)' -f '$<' -o '$@' $(DEPENDENCIES_GUI)

$(AS_CPU_PATH)/GUI02.br: $(TEMP_PATH_GUI)/GUI02.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_GUI) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_GUI)' -f '$<' -o '$@' $(DEPENDENCIES_GUI)

$(AS_CPU_PATH)/GUI03.br: $(TEMP_PATH_GUI)/GUI03.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_GUI) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_GUI)' -f '$<' -o '$@' $(DEPENDENCIES_GUI)

# General Build rules END
$(LIB_LOCAL_OBJ_GUI) : $(TEMP_PATH_GUI)/GUI01.ccf

# Main Module
$(TEMP_PATH_ROOT_GUI)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/GUI.vcm:
$(TEMP_PATH_GUI)/GUI.prj: $(TEMP_PATH_ROOT_GUI)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/GUI.vcm
	$(VCDEP) -m '$(TEMP_PATH_ROOT_GUI)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/GUI.vcm' -s '$(AS_CPU_PATH)/VCShared/Shared.vcm' -p '$(AS_PATH)/AS/VC/Firmware' -c '$(AS_CPU_PATH)' -fw '$(VCFIRMWAREPATH)' -hw '$(CPUHWC)' -so $(VC_STATIC_OPTIONS_GUI) -o GUI -proj GUI
	$(VCPL) $(notdir $(PROJECT_MODULES_GUI:.br=,4)) GUI,2 -o '$@' -p GUI -vc 'GUI' -verbose 'False' -fl '$(TEMP_PATH_ROOT_GUI)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/GUI.vcm' -vcr '$(VCR_SOURCE_GUI)' -prj '$(AS_PROJECT_PATH)' -warningLevel2 -sfas

# 01 Module

DEL_TARGET01_LFL_GUI=$(TEMP_PATH_GUI)\GUI01.ccf.lfl
$(TEMP_PATH_GUI)/GUI01.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_GUI) $(TEMP_PATH_GUI)/GUI03.ccf $(LIB_LOCAL_RES_GUI) $(TEMP_PATH_GUI)/GUI02.ccf $(DIS_OBJECTS_GUI) $(PAGE_OBJECTS_GUI) $(VCS_OBJECTS_GUI) $(VCVK_OBJECTS_GUI) $(VCRT_OBJECTS_GUI) $(TPR_OBJECTS_GUI) $(TXTGRP_OBJECTS_GUI) $(LAYER_OBJECTS_GUI) $(VCR_OBJECT_GUI) $(TDC_OBJECTS_GUI) $(TRD_OBJECTS_GUI) $(TRE_OBJECTS_GUI) $(PRC_OBJECTS_GUI) $(SCR_OBJECTS_GUI)
	-@CMD /Q /C if exist "$(DEL_TARGET01_LFL_GUI)" DEL /F /Q "$(DEL_TARGET01_LFL_GUI)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_GUI)' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_LOCAL_RES_GUI)' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(DIS_OBJECTS_GUI:.vco=.vco|)' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .page -vcp '$(AS_PROJECT_PATH)/Logical/GUI/Package.vcp' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCS_OBJECTS_GUI:.vco=.vco|)' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .vcvk -vcp '$(AS_PROJECT_PATH)/Logical/GUI/Package.vcp' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCRT_OBJECTS_GUI:.vco=.vco|)' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(TPR_OBJECTS_GUI:.vco=.vco|)' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .txtgrp -vcp '$(AS_PROJECT_PATH)/Logical/GUI/Package.vcp' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .layer -vcp '$(AS_PROJECT_PATH)/Logical/GUI/Package.vcp' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCR_OBJECT_GUI:.vco=.vco|)' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .tdc -vcp '$(AS_PROJECT_PATH)/Logical/GUI/Package.vcp' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .trd -vcp '$(AS_PROJECT_PATH)/Logical/GUI/Package.vcp' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(SCR_OBJECTS_GUI:.vco=.vco|)' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p GUI -lib '$(LIB_LOCAL_OBJ_GUI)' -P '$(AS_PROJECT_PATH)' -m 'local objects' -profile 'False' -warningLevel2 -vcr 4520 -sfas
# 01 Module END

# 02 Module

DEL_TARGET02_LFL_GUI=$(TEMP_PATH_GUI)\GUI02.ccf.lfl
$(TEMP_PATH_GUI)/GUI02.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_GUI) $(TEMP_PATH_GUI)/GUI03.ccf $(BDR_OBJECTS_GUI) $(LFNT_OBJECTS_GUI) $(CLM_OBJECTS_GUI)
	-@CMD /Q /C if exist "$(DEL_TARGET02_LFL_GUI)" DEL /F /Q "$(DEL_TARGET02_LFL_GUI)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_GUI)' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(BDR_OBJECTS_GUI:.vco=.vco|)' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LFNT_OBJECTS_GUI:.vco=.vco|)' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(CLM_OBJECTS_GUI:.vco=.vco|)' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p GUI -lib '$(LIB_LOCAL_RES_GUI)' -P '$(AS_PROJECT_PATH)' -m 'local resources' -profile 'False' -warningLevel2 -vcr 4520 -sfas
# 02 Module END

# 03 Module

DEL_TARGET03_LFL_GUI=$(TEMP_PATH_GUI)\GUI03.ccf.lfl
$(TEMP_PATH_GUI)/GUI03.ccf: $(LIB_SHARED) $(SHARED_CCF) $(BMGRP_OBJECTS_GUI) $(BMINFO_OBJECTS_GUI) $(PALFILE_GUI)
	-@CMD /Q /C if exist "$(DEL_TARGET03_LFL_GUI)" DEL /F /Q "$(DEL_TARGET03_LFL_GUI)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bmgrp -vcp '$(AS_PROJECT_PATH)/Logical/GUI/Package.vcp' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bminfo -vcp '$(AS_PROJECT_PATH)/Logical/GUI/Package.vcp' -temp '$(TEMP_PATH_GUI)' -prj '$(PRJ_PATH_GUI)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p GUI -lib '$(LIB_BMP_RES_GUI)' -P '$(AS_PROJECT_PATH)' -m 'bitmap resources' -profile 'False' -warningLevel2 -vcr 4520 -sfas
# 03 Module END

# Post Build Steps

.PHONY : vcPostBuild_GUI

vcPostBuild_GUI :
	$(VCC) -pb -vcm '$(TEMP_PATH_GUI)/MODULEFILES.vcm' -fw '$(VCFIRMWAREPATH)' $(VCCFLAGS_GUI) -p GUI -vcr 4520 -sfas

# Post Build Steps END
