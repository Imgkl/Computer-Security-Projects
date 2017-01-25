.class public Lcom/eventgenie/android/ui/help/SessionHelper;
.super Ljava/lang/Object;
.source "SessionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/ui/help/SessionHelper$1;,
        Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method public static addSpeakerListSection(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;)V
    .locals 3
    .param p0, "c"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;
    .param p3, "a"    # Landroid/app/Activity;
    .param p4, "config"    # Lcom/genie_connect/android/db/config/AppConfig;

    .prologue
    .line 65
    invoke-interface {p0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 66
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v2, 0x0

    invoke-static {p3, v1, p4, p0, v2}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v0

    .line 67
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {p1, p3}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 68
    invoke-virtual {p2, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    return-void
.end method

.method public static addSubSessionListSection(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;)V
    .locals 2
    .param p0, "c"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;
    .param p3, "a"    # Landroid/app/Activity;
    .param p4, "config"    # Lcom/genie_connect/android/db/config/AppConfig;

    .prologue
    .line 74
    invoke-interface {p0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 75
    const/4 v1, 0x1

    invoke-static {p3, p4, p0, v1}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getSubsessionListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Landroid/database/Cursor;Z)Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;

    move-result-object v0

    .line 78
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {p1, p3}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p2, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    return-void
.end method

.method public static getMeetingIcon(Landroid/content/Context;Luk/co/alt236/easycursor/EasyCursor;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 84
    sget v0, Lcom/eventgenie/android/R$drawable;->meeting:I

    .line 85
    .local v0, "res":I
    const-string v2, "status"

    invoke-interface {p1, v2}, Luk/co/alt236/easycursor/EasyCursor;->optIntAsWrapperType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 87
    .local v1, "status":Ljava/lang/Integer;
    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 89
    :cond_0
    sget v0, Lcom/eventgenie/android/R$drawable;->meeting_ticked_icon:I

    .line 97
    .end local v0    # "res":I
    :cond_1
    :goto_0
    return v0

    .line 90
    .restart local v0    # "res":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 91
    sget v0, Lcom/eventgenie/android/R$drawable;->meeting_query_icon:I

    goto :goto_0

    .line 94
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ getMeetingIcon - Meeting without status - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {p1, v3}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getScheduleItemType(Ljava/lang/String;)Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;
    .locals 1
    .param p0, "scheduleItemType"    # Ljava/lang/String;

    .prologue
    .line 101
    if-eqz p0, :cond_2

    .line 102
    const-string v0, "subsession"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->SUBSESSION:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    .line 111
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const-string v0, "adhoc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    sget-object v0, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->ADHOC:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    goto :goto_0

    .line 106
    :cond_1
    const-string v0, "meeting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    sget-object v0, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->MEETING:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    goto :goto_0

    .line 111
    :cond_2
    sget-object v0, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->OTHER:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    goto :goto_0
.end method

.method public static onScheduleItemClick(Landroid/content/Context;Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;
    .param p2, "id"    # J

    .prologue
    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v0, "b":Landroid/os/Bundle;
    sget-object v2, Lcom/eventgenie/android/ui/help/SessionHelper$1;->$SwitchMap$com$eventgenie$android$ui$help$SessionHelper$ScheduleItemType:[I

    invoke-virtual {p1}, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 133
    const/4 v1, 0x0

    .line 138
    .local v1, "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :goto_0
    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 139
    return-void

    .line 120
    .end local v1    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_0
    const-string v2, "TYPE"

    const-string v3, "adhoc"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->AGENDAITEM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v2, p2, p3, v0}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .line 122
    .restart local v1    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_0

    .line 124
    .end local v1    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_1
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MEETING:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v2, p2, p3, v0}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .line 125
    .restart local v1    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_0

    .line 127
    .end local v1    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_2
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v2, p2, p3, v0}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .line 128
    .restart local v1    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_0

    .line 130
    .end local v1    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_3
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v2, p2, p3, v0}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .line 131
    .restart local v1    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
