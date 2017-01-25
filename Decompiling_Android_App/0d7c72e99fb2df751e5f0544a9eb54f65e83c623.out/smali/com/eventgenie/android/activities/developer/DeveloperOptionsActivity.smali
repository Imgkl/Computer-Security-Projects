.class public Lcom/eventgenie/android/activities/developer/DeveloperOptionsActivity;
.super Lcom/eventgenie/android/activities/base/GenieListActivity;
.source "DeveloperOptionsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final EXTRA_LIST_CONTENTS_VALUE_BASE:Ljava/lang/String; = "EXTRA_LIST_CONTENTS_VALUE_BASE"

.field public static final EXTRA_LIST_CONTENTS_VALUE_DEBUG:Ljava/lang/String; = "EXTRA_LIST_CONTENTS_VALUE_DEBUG"

.field public static final EXTRA_LIST_LEVEL:Ljava/lang/String; = "EXTRA_LIST_CONTENTS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;-><init>()V

    return-void
.end method

.method private getLevel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/DeveloperOptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 63
    const-string v0, "EXTRA_LIST_CONTENTS_VALUE_BASE"

    .line 70
    :cond_0
    :goto_0
    return-object v0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/DeveloperOptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_LIST_CONTENTS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "level":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 67
    const-string v0, "EXTRA_LIST_CONTENTS_VALUE_BASE"

    goto :goto_0
.end method

.method private getListItems(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "level"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/IntentListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/container/IntentListItem;>;"
    const-string v2, "EXTRA_LIST_CONTENTS_VALUE_BASE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Lcom/eventgenie/android/container/IntentListItem;

    sget v3, Lcom/eventgenie/android/R$string;->debug_menu_perform_network_check:I

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_action_light_web_site:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/eventgenie/android/container/IntentListItem;-><init>(ILjava/lang/Integer;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v2, Lcom/eventgenie/android/container/IntentListItem;

    sget v3, Lcom/eventgenie/android/R$string;->debug_menu_send_application_log:I

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_action_light_share:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/eventgenie/android/container/IntentListItem;-><init>(ILjava/lang/Integer;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/eventgenie/android/activities/developer/dbinfo/DbInfoActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v2, Lcom/eventgenie/android/container/IntentListItem;

    sget v3, Lcom/eventgenie/android/R$string;->debug_menu_send_database_log:I

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_action_light_layers:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/eventgenie/android/container/IntentListItem;-><init>(ILjava/lang/Integer;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/DeveloperOptionsActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getInternalAccessGroup(Landroid/content/Context;)Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->SUPPORT:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v2, Lcom/eventgenie/android/container/IntentListItem;

    sget v3, Lcom/eventgenie/android/R$string;->debug_menu_low_level_options:I

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_action_light_important:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/eventgenie/android/container/IntentListItem;-><init>(ILjava/lang/Integer;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/eventgenie/android/activities/developer/DeveloperOptionsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "EXTRA_LIST_CONTENTS"

    const-string v3, "EXTRA_LIST_CONTENTS_VALUE_DEBUG"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    new-instance v2, Lcom/eventgenie/android/container/IntentListItem;

    sget v3, Lcom/eventgenie/android/R$string;->debug_menu_debug_tools:I

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_action_light_important:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/eventgenie/android/container/IntentListItem;-><init>(ILjava/lang/Integer;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/eventgenie/android/activities/developer/ConfigFlagsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v2, Lcom/eventgenie/android/container/IntentListItem;

    sget v3, Lcom/eventgenie/android/R$string;->debug_menu_config_flags:I

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_menu_proofer:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/eventgenie/android/container/IntentListItem;-><init>(ILjava/lang/Integer;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/Sorters;->sort(Landroid/content/Context;Ljava/util/List;)V

    .line 186
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 113
    :cond_1
    const-string v2, "EXTRA_LIST_CONTENTS_VALUE_DEBUG"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/DeveloperOptionsActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getInternalAccessGroup(Landroid/content/Context;)Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->SUPPORT:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "extra_resource_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    new-instance v2, Lcom/eventgenie/android/container/IntentListItem;

    sget v3, Lcom/eventgenie/android/R$string;->debug_menu_translations_check:I

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_action_light_chat:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/eventgenie/android/container/IntentListItem;-><init>(ILjava/lang/Integer;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "extra_resource_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    new-instance v2, Lcom/eventgenie/android/container/IntentListItem;

    sget v3, Lcom/eventgenie/android/R$string;->debug_menu_icons_check:I

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_action_light_picture:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/eventgenie/android/container/IntentListItem;-><init>(ILjava/lang/Integer;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v2, Lcom/eventgenie/android/container/IntentListItem;

    sget v3, Lcom/eventgenie/android/R$string;->debug_menu_location_validator:I

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_action_light_location_map:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/eventgenie/android/container/IntentListItem;-><init>(ILjava/lang/Integer;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v2, Lcom/eventgenie/android/container/IntentListItem;

    sget v3, Lcom/eventgenie/android/R$string;->debug_menu_visitor_group_permission_check:I

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_action_light_group:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/eventgenie/android/container/IntentListItem;-><init>(ILjava/lang/Integer;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/eventgenie/android/activities/developer/TimeDateFormatterCheckActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v2, Lcom/eventgenie/android/container/IntentListItem;

    sget v3, Lcom/eventgenie/android/R$string;->debug_menu_time_format_check:I

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_action_light_go_to_today:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/eventgenie/android/container/IntentListItem;-><init>(ILjava/lang/Integer;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/eventgenie/android/activities/developer/HeaderCheckActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v2, Lcom/eventgenie/android/container/IntentListItem;

    sget v3, Lcom/eventgenie/android/R$string;->debug_menu_network_header_check:I

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_action_light_web_site:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/eventgenie/android/container/IntentListItem;-><init>(ILjava/lang/Integer;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/DeveloperOptionsActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getInternalAccessGroup(Landroid/content/Context;)Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->DEVELOPER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/developer/ResourcesCheckActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "extra_resource_type"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    new-instance v2, Lcom/eventgenie/android/container/IntentListItem;

    sget v3, Lcom/eventgenie/android/R$string;->debug_menu_activities_check:I

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_action_light_full_screen:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/eventgenie/android/container/IntentListItem;-><init>(ILjava/lang/Integer;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v2, Lcom/eventgenie/android/container/IntentListItem;

    sget v3, Lcom/eventgenie/android/R$string;->debug_menu_user_notifications_check:I

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_action_light_recommendation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/eventgenie/android/container/IntentListItem;-><init>(ILjava/lang/Integer;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v2, Lcom/eventgenie/android/container/IntentListItem;

    sget v3, Lcom/eventgenie/android/R$string;->debug_menu_token_replacement_check:I

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_action_light_barcode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/eventgenie/android/container/IntentListItem;-><init>(ILjava/lang/Integer;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v2, Lcom/eventgenie/android/container/IntentListItem;

    const-string v3, "Widget Launcher"

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_action_light_about:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/eventgenie/android/container/IntentListItem;-><init>(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/eventgenie/android/activities/developer/WifiTestActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v2, Lcom/eventgenie/android/container/IntentListItem;

    const-string v3, "Wifi Test"

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_action_light_web_site:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/eventgenie/android/container/IntentListItem;-><init>(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v4, -0x10000

    .line 191
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 192
    sget-object v2, Lcom/eventgenie/android/ui/help/UIUtils$Layout;->GENERIC_LIST:Lcom/eventgenie/android/ui/help/UIUtils$Layout;

    invoke-static {v2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getAppropriateLayout(Lcom/eventgenie/android/ui/help/UIUtils$Layout;Lcom/eventgenie/android/activities/base/GenieActivity;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/developer/DeveloperOptionsActivity;->setContentView(I)V

    .line 194
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/DeveloperOptionsActivity;->getLevel()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/eventgenie/android/activities/developer/DeveloperOptionsActivity;->getListItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 195
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/container/IntentListItem;>;"
    new-instance v0, Lcom/eventgenie/android/adapters/other/IntentListItemAdapter;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/eventgenie/android/adapters/other/IntentListItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/Integer;)V

    .line 196
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/DeveloperOptionsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/DeveloperOptionsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 198
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/DeveloperOptionsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->debug_menu_activity_title:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/developer/DeveloperOptionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/DeveloperOptionsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setBackgroundColor(I)V

    .line 200
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/container/IntentListItem;

    .line 205
    .local v0, "entry":Lcom/eventgenie/android/container/IntentListItem;
    invoke-virtual {v0}, Lcom/eventgenie/android/container/IntentListItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/developer/DeveloperOptionsActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 206
    return-void
.end method

.method protected shouldMakeLockoutCheck()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method
