.class public Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;
.super Lcom/eventgenie/android/activities/base/GenieTabActivity;
.source "CalendarTabsActivity.java"


# static fields
.field public static final DAY_ID_EXTRA:Ljava/lang/String; = "day_id"

.field public static final DISPLAY_MODE_CALENDAR:I = 0x1

.field public static final DISPLAY_MODE_EXTRA:Ljava/lang/String; = "display_mode"

.field public static final DISPLAY_MODE_LIST:I = 0x2

.field public static final FILTER_BOOKMARK_EXTRA:Ljava/lang/String; = "is_bookmarked"

.field public static final FILTER_FAVORITE_EXTRA:Ljava/lang/String; = "is_favorite"

.field public static final FILTER_TAGSV2:Ljava/lang/String; = "use_tagsv2_for_searching"

.field public static final RETURN_CODE_FILTER:I


# instance fields
.field private initialQuery:Ljava/lang/String;

.field private mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

.field private mDayId:Ljava/lang/String;

.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mDisplayMode:I

.field private mFilterKeyword:Ljava/lang/String;

.field private mFilterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterTagsV2:Z

.field private mIsBookmarked:Z

.field private mIsFavourite:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;-><init>()V

    .line 101
    iput-boolean v1, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mIsFavourite:Z

    .line 102
    iput-boolean v1, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mIsBookmarked:Z

    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDisplayMode:I

    .line 108
    iput-boolean v1, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterTagsV2:Z

    return-void
.end method

.method private buildUI()V
    .locals 27

    .prologue
    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v18

    .line 113
    .local v18, "tabHost":Landroid/widget/TabHost;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 119
    invoke-direct/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->setCalendarLimits()V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getEventDaysDb()Lcom/genie_connect/android/db/access/DbEventDays;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/genie_connect/android/db/access/DbEventDays;->getEventDays(Z)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

    .line 123
    const/16 v16, 0x0

    .line 124
    .local v16, "tabCount":I
    const/16 v17, 0x0

    .line 125
    .local v17, "tabDisabledCount":I
    const/4 v10, 0x0

    .line 126
    .local v10, "filteredItems":I
    const/4 v11, -0x1

    .line 127
    .local v11, "firstTab":I
    const/4 v15, 0x1

    .line 129
    .local v15, "isCurrentDayTabEnabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v12

    .line 130
    .local v12, "hasData":Z
    :goto_0
    if-eqz v12, :cond_8

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

    move-object/from16 v21, v0

    const-string v22, "runningTime_from"

    invoke-interface/range {v21 .. v22}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 133
    .local v7, "day":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

    move-object/from16 v21, v0

    const-string v22, "name"

    invoke-interface/range {v21 .. v22}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, "dayName":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "^ EVENT : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7, v8}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getTabIntent(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 136
    .local v14, "intent":Landroid/content/Intent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v5, "b":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->addInheritedExtras(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 138
    invoke-virtual {v14, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 144
    :try_start_0
    invoke-static {v7}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getShortDayFromSqlite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 145
    .local v19, "title1":Ljava/lang/String;
    invoke-static {v7}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getYearlessShortDateFromSqlite(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 153
    .local v20, "title2":Ljava/lang/String;
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->isFilteringStuffEnabled()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-gtz v21, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterTagsV2:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 155
    :cond_1
    const-class v21, Lcom/genie_connect/android/repository/SessionRepository;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/genie_connect/android/repository/SessionRepository;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterKeyword:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/genie_connect/android/repository/SessionRepository;->getSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v6

    .line 157
    .local v6, "c":Luk/co/alt236/easycursor/EasyCursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v21

    if-nez v21, :cond_4

    .line 158
    :cond_2
    const-string v21, "^ EVENT Filter cursor returned null"

    invoke-static/range {v21 .. v21}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 159
    add-int/lit8 v17, v17, 0x1

    .line 160
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->buildBottomDisabledIndicator(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v13

    .line 174
    .end local v6    # "c":Luk/co/alt236/easycursor/EasyCursor;
    .local v13, "indicator":Landroid/view/View;
    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 177
    const-string v21, "disabled"

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 178
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "^ EVENT tab "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " disabled"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setEnabled(Z)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDayId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 181
    const/4 v15, 0x0

    .line 189
    :cond_3
    :goto_3
    add-int/lit8 v16, v16, 0x1

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v12

    .line 191
    goto/16 :goto_0

    .line 146
    .end local v13    # "indicator":Landroid/view/View;
    .end local v19    # "title1":Ljava/lang/String;
    .end local v20    # "title2":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 147
    .local v9, "e":Ljava/lang/Exception;
    move-object/from16 v19, v8

    .line 148
    .restart local v19    # "title1":Ljava/lang/String;
    const-string v20, ""

    .restart local v20    # "title2":Ljava/lang/String;
    goto/16 :goto_1

    .line 162
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "c":Luk/co/alt236/easycursor/EasyCursor;
    :cond_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "^ EVENT Filter cursor returned "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v6}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " results"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 164
    invoke-interface {v6}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v21

    add-int v10, v10, v21

    .line 165
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->buildBottomIndicator(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v13

    .restart local v13    # "indicator":Landroid/view/View;
    goto/16 :goto_2

    .line 168
    .end local v6    # "c":Luk/co/alt236/easycursor/EasyCursor;
    .end local v13    # "indicator":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->buildBottomIndicator(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v13

    .restart local v13    # "indicator":Landroid/view/View;
    goto/16 :goto_2

    .line 171
    .end local v13    # "indicator":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->buildBottomIndicator(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v13

    .restart local v13    # "indicator":Landroid/view/View;
    goto/16 :goto_2

    .line 184
    :cond_7
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_3

    .line 185
    move/from16 v11, v16

    goto :goto_3

    .line 193
    .end local v5    # "b":Landroid/os/Bundle;
    .end local v7    # "day":Ljava/lang/String;
    .end local v8    # "dayName":Ljava/lang/String;
    .end local v13    # "indicator":Landroid/view/View;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v19    # "title1":Ljava/lang/String;
    .end local v20    # "title2":Ljava/lang/String;
    :cond_8
    if-nez v16, :cond_b

    .line 194
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mIsFavourite:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 195
    sget v21, Lcom/eventgenie/android/R$string;->msg_no_sessions_format:I

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v24

    sget-object v25, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v26, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual/range {v24 .. v26}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 207
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->finish()V

    .line 255
    :cond_9
    :goto_5
    return-void

    .line 200
    :cond_a
    sget v21, Lcom/eventgenie/android/R$string;->msg_no_session_data_format:I

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v24

    sget-object v25, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v26, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual/range {v24 .. v26}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 210
    :cond_b
    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->isFilteringStuffEnabled()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 211
    sget v21, Lcom/eventgenie/android/R$string;->msg_no_sessions_found_after_filter:I

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v24

    sget-object v25, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v26, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual/range {v24 .. v26}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->finish()V

    goto :goto_5

    .line 220
    :cond_c
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v11, v0, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->isFilteringStuffEnabled()Z

    move-result v21

    if-eqz v21, :cond_12

    .line 221
    if-eqz v15, :cond_11

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDayId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 231
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDisplayMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 234
    invoke-direct/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->isFilteringStuffEnabled()Z

    move-result v21

    if-eqz v21, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->getEnableFilters()Z

    move-result v21

    if-eqz v21, :cond_10

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-gtz v21, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterTagsV2:Z

    move/from16 v21, v0

    if-eqz v21, :cond_13

    if-lez v10, :cond_13

    .line 239
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v21

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v10}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showActionFilter(ZZI)V

    .line 248
    :cond_10
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 249
    sget v21, Lcom/eventgenie/android/R$id;->ad_line_separator:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 250
    .local v4, "adLine":Landroid/view/View;
    if-eqz v4, :cond_9

    .line 251
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 224
    .end local v4    # "adLine":Landroid/view/View;
    :cond_11
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_6

    .line 226
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDayId:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDayId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 242
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v21

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, -0x1

    invoke-virtual/range {v21 .. v24}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showActionFilter(ZZI)V

    goto :goto_7
.end method

.method private dayHasSessions(Ljava/lang/String;Luk/co/alt236/easycursor/EasyCursor;)Z
    .locals 1
    .param p1, "day"    # Ljava/lang/String;
    .param p2, "scheduleCursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 477
    if-eqz p2, :cond_2

    invoke-interface {p2}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    :cond_0
    const-string v0, "eventDay"

    invoke-interface {p2, v0}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    const/4 v0, 0x1

    .line 486
    :goto_0
    return v0

    .line 484
    :cond_1
    invoke-interface {p2}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentEventDayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 259
    .local v0, "position":I
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v1, v0}, Luk/co/alt236/easycursor/EasyCursor;->moveToPosition(I)Z

    .line 260
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

    const-string v2, "name"

    invoke-interface {v1, v2}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTabIntent(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "days"    # Landroid/database/Cursor;
    .param p2, "day"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 264
    const/4 v1, 0x0

    .line 267
    .local v1, "intent":Landroid/content/Intent;
    iget v2, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDisplayMode:I

    packed-switch v2, :pswitch_data_0

    .line 301
    :goto_0
    return-object v1

    .line 270
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/eventgenie/android/activities/sessions/CalendarActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 273
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "day_id"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v2, "day_date"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v2, "is_favorite"

    iget-boolean v3, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mIsFavourite:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    const-string v2, "is_bookmarked"

    iget-boolean v3, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mIsBookmarked:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 277
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    .line 282
    .end local v0    # "b":Landroid/os/Bundle;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 285
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v2, "day_id"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v2, "is_favorite"

    iget-boolean v3, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mIsFavourite:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    const-string v2, "filter_categories"

    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 290
    const-string v2, "is_bookmarked"

    iget-boolean v3, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mIsBookmarked:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 291
    const-string/jumbo v2, "use_tagsv2_for_searching"

    iget-boolean v3, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterTagsV2:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    const-string v2, "EXTRA_TAG_TEXT_FILTER"

    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterKeyword:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isFilteringStuffEnabled()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mIsFavourite:Z

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x1

    .line 309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToCurrentDay()V
    .locals 32

    .prologue
    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/db/config/AppConfig;->getTimeZoneOfEvent()Ljava/util/TimeZone;

    move-result-object v14

    .line 495
    .local v14, "eventTimeZone":Ljava/util/TimeZone;
    new-instance v22, Landroid/text/format/Time;

    invoke-virtual {v14}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 496
    .local v22, "nowTime":Landroid/text/format/Time;
    invoke-virtual/range {v22 .. v22}, Landroid/text/format/Time;->setToNow()V

    .line 498
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v28

    const-class v29, Lcom/genie_connect/android/repository/SessionRepository;

    invoke-virtual/range {v28 .. v29}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/genie_connect/android/repository/SessionRepository;

    .line 499
    .local v27, "sessionRepository":Lcom/genie_connect/android/repository/SessionRepository;
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {v27 .. v31}, Lcom/genie_connect/android/repository/SessionRepository;->getSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v26

    .line 501
    .local v26, "schedule":Luk/co/alt236/easycursor/EasyCursor;
    const-wide/16 v20, -0x1

    .line 502
    .local v20, "nextSessionStartTime":J
    const-wide/16 v24, -0x1

    .line 503
    .local v24, "oldDiff":J
    const/16 v18, 0x0

    .line 505
    .local v18, "nextEventDayId":Ljava/lang/String;
    invoke-interface/range {v26 .. v26}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v17

    .line 506
    .local v17, "hasData":Z
    :goto_0
    if-eqz v17, :cond_3

    .line 507
    sget-object v28, Lcom/genie_connect/common/db/model/Session$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    move-object/from16 v0, v28

    iget-object v0, v0, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertSqliteStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v23

    .line 508
    .local v23, "runningTime_from":Ljava/util/Date;
    const-string v28, "eventDay"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 511
    .local v12, "eventDay":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v28

    const/16 v30, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v30

    sub-long v10, v28, v30

    .line 514
    .local v10, "diff":J
    const-wide/16 v28, -0x1

    cmp-long v28, v24, v28

    if-nez v28, :cond_0

    const-wide/16 v28, 0x0

    cmp-long v28, v10, v28

    if-gtz v28, :cond_1

    :cond_0
    const-wide/16 v28, 0x0

    cmp-long v28, v10, v28

    if-lez v28, :cond_2

    cmp-long v28, v10, v24

    if-gez v28, :cond_2

    .line 515
    :cond_1
    move-wide/from16 v24, v10

    .line 516
    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    .line 517
    move-object/from16 v18, v12

    .line 519
    :cond_2
    invoke-interface/range {v26 .. v26}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v17

    .line 520
    goto :goto_0

    .line 523
    .end local v10    # "diff":J
    .end local v12    # "eventDay":Ljava/lang/String;
    .end local v23    # "runningTime_from":Ljava/util/Date;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getEventDaysDb()Lcom/genie_connect/android/db/access/DbEventDays;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/genie_connect/android/db/access/DbEventDays;->getEventDays(Z)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v13

    .line 525
    .local v13, "eventDays":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v13}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v17

    .line 527
    move-object/from16 v5, v18

    .line 530
    .local v5, "currentName":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 531
    .local v4, "calendar":Ljava/util/Calendar;
    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 533
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    .line 534
    .local v19, "nowCalendar":Ljava/util/Calendar;
    const/16 v28, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v28

    const/16 v30, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-virtual {v14, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v28, v28, v30

    move-object/from16 v0, v19

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 535
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v28

    const-string v29, "asgdfghas"

    invoke-virtual/range {v28 .. v29}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->getDayBoundary(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v16

    .line 540
    .local v16, "globalDayBoundary":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_1
    if-eqz v17, :cond_6

    .line 542
    const-string v28, "runningTime_from"

    move-object/from16 v0, v28

    invoke-interface {v13, v0}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 543
    .local v15, "from":Ljava/lang/String;
    const-string v28, "name"

    move-object/from16 v0, v28

    invoke-interface {v13, v0}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 546
    .local v7, "dayName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v7, v1}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->dayHasSessions(Ljava/lang/String;Luk/co/alt236/easycursor/EasyCursor;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 547
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "^ CalendarTabActivity: no visible sessions for the day: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 548
    invoke-interface {v13}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v17

    .line 549
    goto :goto_1

    .line 552
    :cond_4
    invoke-static {v15}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertSqliteStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 554
    .local v6, "dayFromEventDate":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v28

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-virtual {v14, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v8, v28, v30

    .line 555
    .local v8, "dayFromEventMillis":J
    invoke-virtual {v4, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 558
    const/16 v28, 0x6

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v28

    const/16 v29, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 559
    const/16 v28, 0xb

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v29

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v0, v29

    move/from16 v1, v28

    if-le v0, v1, :cond_5

    const/16 v28, 0xb

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v29

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v0, v29

    move/from16 v1, v28

    if-ge v0, v1, :cond_5

    .line 560
    move-object v5, v7

    .line 564
    :cond_5
    invoke-interface {v13}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v17

    .line 565
    goto/16 :goto_1

    .line 567
    .end local v6    # "dayFromEventDate":Ljava/util/Date;
    .end local v7    # "dayName":Ljava/lang/String;
    .end local v8    # "dayFromEventMillis":J
    .end local v15    # "from":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDayId:Ljava/lang/String;

    .line 569
    return-void
.end method

.method private setCalendarLimits()V
    .locals 14

    .prologue
    .line 652
    iget-object v12, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v12}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getEventDaysDb()Lcom/genie_connect/android/db/access/DbEventDays;

    move-result-object v12

    invoke-virtual {v12}, Lcom/genie_connect/android/db/access/DbEventDays;->getEventDays()Ljava/util/List;

    move-result-object v10

    .line 653
    .local v10, "res":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .local v11, "timeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;

    .line 658
    .local v0, "day":Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;->getRunningTime()Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;->getFrom()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getHourFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 660
    .local v6, "eventMin":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;->getRunningTime()Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;->getTo()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getHourFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 662
    .local v4, "eventMax":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;->getRunningTime()Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;->getTo()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getMinFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 664
    .local v5, "eventMaxMinutes":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "^ EVENT: eventMax Hours: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Minutes: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 666
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 667
    .local v2, "dayMaxMinutes":I
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 668
    .local v3, "dayMin":I
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 670
    .local v1, "dayMax":I
    if-lez v3, :cond_0

    .line 671
    add-int/lit8 v3, v3, -0x1

    .line 673
    :cond_0
    const/16 v12, 0x17

    if-ge v1, v12, :cond_1

    .line 674
    add-int/lit8 v3, v3, 0x1

    .line 676
    :cond_1
    if-lez v2, :cond_2

    .line 677
    add-int/lit8 v1, v1, 0x1

    .line 679
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "^ EVENT: New Day: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 684
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "^ EVENT:     RAW:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;->getRunningTime()Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;

    move-result-object v13

    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v12

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v3, v1}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->addEventDayBoundary(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 690
    .end local v0    # "day":Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;
    .end local v1    # "dayMax":I
    .end local v2    # "dayMaxMinutes":I
    .end local v3    # "dayMin":I
    .end local v4    # "eventMax":Ljava/lang/String;
    .end local v5    # "eventMaxMinutes":Ljava/lang/String;
    .end local v6    # "eventMin":Ljava/lang/String;
    :cond_3
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 692
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_4

    .line 693
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 694
    .local v9, "min":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 695
    .local v8, "max":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "^ EVENT: Global Values: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v12

    invoke-virtual {v12, v9, v8}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->setGlobalDayBoundary(II)V

    .line 722
    .end local v8    # "max":I
    .end local v9    # "min":I
    :cond_4
    return-void
.end method

.method private startFilterActivity()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 732
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/SetupConfig;->isNewTagsForSessions()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 734
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 736
    .local v1, "i":Landroid/content/Intent;
    const-string v4, "associated_entity_name"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 737
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 738
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v3

    .line 739
    .local v3, "position":I
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v4, v3}, Luk/co/alt236/easycursor/EasyCursor;->moveToPosition(I)Z

    .line 740
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

    const-string v6, "name"

    invoke-interface {v5, v6}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDayId:Ljava/lang/String;

    .line 742
    const-string v4, "day_id"

    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDayId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v4, "is_favorite"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 744
    const-string/jumbo v4, "use_tagsv2_for_searching"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 745
    const-string v4, "filter_type_extra"

    const-string v5, "sessions"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 748
    invoke-virtual {p0, v1, v8}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 772
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 753
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "position":I
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 754
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 756
    .restart local v0    # "b":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v3

    .line 757
    .restart local v3    # "position":I
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v4, v3}, Luk/co/alt236/easycursor/EasyCursor;->moveToPosition(I)Z

    .line 758
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

    const-string v6, "name"

    invoke-interface {v5, v6}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDayId:Ljava/lang/String;

    .line 760
    const-string v4, "day_id"

    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDayId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v4, "is_favorite"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 762
    const-string v4, "filter_categories_extra"

    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 764
    const-string v4, "filter_type_extra"

    const-string v5, "sessions"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 768
    invoke-virtual {p0, v2, v8}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 315
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 316
    if-nez p1, :cond_1

    .line 317
    const/4 v7, -0x1

    if-ne p2, v7, :cond_1

    .line 318
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 323
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v7, "use_tagsv2_for_searching"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterTagsV2:Z

    if-eqz v7, :cond_2

    .line 325
    const-string v7, "EXTRA_TAG_TEXT_FILTER"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterKeyword:Ljava/lang/String;

    .line 327
    invoke-static {}, Lcom/genie_connect/android/bl/tags/TagTreeManager;->getTagTree()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    move-result-object v6

    .line 328
    .local v6, "tagTree":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-static {v6}, Lcom/genie_connect/android/db/access/TagsV2QueryHelper;->getSelectedTagsListFromTreeCategorieCompat(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Ljava/util/List;

    move-result-object v5

    .line 329
    .local v5, "selectedTagsListFromTree":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterList:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    .line 330
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterList:Ljava/util/ArrayList;

    .line 332
    :cond_0
    iget-object v7, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 333
    iget-object v7, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 335
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 336
    .local v4, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "b":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 337
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v7, "display_mode"

    iget v8, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDisplayMode:I

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    const-string v7, "day_id"

    iget-object v8, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDayId:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v7, "is_favorite"

    iget-boolean v8, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mIsFavourite:Z

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    const-string v7, "is_bookmarked"

    iget-boolean v8, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mIsBookmarked:Z

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 341
    const-string/jumbo v7, "use_tagsv2_for_searching"

    iget-boolean v8, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterTagsV2:Z

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 342
    const-string v7, "EXTRA_TAG_TEXT_FILTER"

    iget-object v8, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterKeyword:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v7, "filter_categories_extra"

    iget-object v8, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 348
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 349
    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 384
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "selectedTagsListFromTree":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "tagTree":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    :cond_1
    :goto_0
    return-void

    .line 351
    .restart local v0    # "b":Landroid/os/Bundle;
    :cond_2
    const-string v7, "filter_categories_extra"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 352
    const-string v7, "filter_categories_extra"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterList:Ljava/util/ArrayList;

    .line 355
    iget-object v7, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterList:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 357
    .restart local v4    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "b":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 358
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v7, "display_mode"

    iget v8, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDisplayMode:I

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 359
    const-string v7, "day_id"

    iget-object v8, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDayId:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v7, "is_favorite"

    iget-boolean v8, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mIsFavourite:Z

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 361
    const-string v7, "is_bookmarked"

    iget-boolean v8, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mIsBookmarked:Z

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 363
    iget-object v7, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 364
    .local v2, "filter":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ EVENT filter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 366
    .end local v2    # "filter":Ljava/lang/String;
    :cond_3
    const-string v7, "filter_categories_extra"

    iget-object v8, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 369
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->startActivityCarefully(Landroid/content/Intent;)V

    goto :goto_0

    .line 372
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v7, "KEYWORD_EXTRA"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 373
    const-string v7, "^ CalendarTabsActivity search"

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 374
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v7, "android.intent.action.SEARCH"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v7, "query"

    const-string v8, "KEYWORD_EXTRA"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 378
    .local v1, "bundleArgs":Landroid/os/Bundle;
    const-string v7, "search_target"

    const/4 v8, 0x3

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 379
    const-string v7, "app_data"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 380
    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onAgendaClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 387
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

    if-nez v2, :cond_0

    .line 400
    :goto_0
    return-void

    .line 390
    :cond_0
    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_AGENDA:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {p0, v2}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyWidgetOpen(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Z

    .line 392
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 395
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "day_id"

    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getCurrentEventDayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v2, "is_favorite"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 398
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->startActivityCarefully(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onContentNewClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 403
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 406
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "day_id"

    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getCurrentEventDayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 409
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 410
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 414
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 415
    sget v1, Lcom/eventgenie/android/R$layout;->generic_tabs_bottom:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->setContentView(I)V

    .line 416
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 422
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->allowToggle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->TOGGLE:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 426
    :cond_0
    iput-boolean v3, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterTagsV2:Z

    .line 427
    iput-object v5, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterKeyword:Ljava/lang/String;

    .line 429
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 430
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 431
    const-string v1, "display_mode"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDisplayMode:I

    .line 432
    const-string v1, "day_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDayId:Ljava/lang/String;

    .line 433
    const-string v1, "is_favorite"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mIsFavourite:Z

    .line 434
    const-string v1, "is_bookmarked"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mIsBookmarked:Z

    .line 435
    const-string/jumbo v1, "use_tagsv2_for_searching"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterTagsV2:Z

    .line 436
    const-string v1, "EXTRA_TAG_TEXT_FILTER"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterKeyword:Ljava/lang/String;

    .line 438
    const-string v1, "filter_categories_extra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mFilterList:Ljava/util/ArrayList;

    .line 441
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mIsFavourite:Z

    if-eqz v1, :cond_1

    .line 442
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyAgenda()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/BaseConfig;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 444
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SEARCH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 445
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->TOGGLE:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 449
    :cond_1
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mIsFavourite:Z

    if-nez v1, :cond_2

    .line 450
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_AGENDA:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1, p0, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->isWidgetPresent(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 451
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->AGENDA:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 455
    :cond_2
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mIsBookmarked:Z

    if-eqz v1, :cond_3

    .line 456
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_AGENDA:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1, p0, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->isWidgetPresent(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 458
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteSessions()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/BaseConfig;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 459
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->AGENDA:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 460
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->TOGGLE:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 464
    :cond_3
    iget v1, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDisplayMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 465
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->switchToggleDrawable()V

    .line 468
    :cond_4
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 469
    :cond_5
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->moveToCurrentDay()V

    .line 471
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->buildUI()V

    .line 474
    :cond_6
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->close(Landroid/database/Cursor;)V

    .line 575
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->onDestroy()V

    .line 576
    return-void
.end method

.method public onFilterClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->startFilterActivity()V

    .line 591
    const/4 v0, 0x1

    return v0
.end method

.method protected onLoginSuccess()V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->buildUI()V

    .line 597
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 601
    const-string v0, "^ EVENT: onPause"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 602
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->onPause()V

    .line 603
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 607
    sget v1, Lcom/eventgenie/android/R$id;->search_bar:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 609
    .local v0, "searchMenuItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 611
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 616
    const-string v0, "^ EVENT: onResume"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 617
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->onResume()V

    .line 618
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 622
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onToggleClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    .line 626
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

    if-nez v4, :cond_0

    .line 648
    :goto_0
    return-void

    .line 630
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 631
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 633
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v3

    .line 635
    .local v3, "position":I
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v4, v3}, Luk/co/alt236/easycursor/EasyCursor;->moveToPosition(I)Z

    .line 637
    const-string v4, "day_id"

    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v6, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mCursorDays:Luk/co/alt236/easycursor/EasyCursor;

    const-string v7, "name"

    invoke-interface {v6, v7}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v4, "is_favorite"

    iget-boolean v5, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mIsFavourite:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 641
    iget v4, p0, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->mDisplayMode:I

    if-ne v4, v2, :cond_1

    const/4 v2, 0x1

    .line 643
    .local v2, "mode":I
    :cond_1
    const-string v4, "display_mode"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 644
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 646
    const/high16 v4, 0x4000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 647
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->startActivityCarefully(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public showIndicator(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarTabsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_LEFT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, p1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 727
    return-void
.end method
