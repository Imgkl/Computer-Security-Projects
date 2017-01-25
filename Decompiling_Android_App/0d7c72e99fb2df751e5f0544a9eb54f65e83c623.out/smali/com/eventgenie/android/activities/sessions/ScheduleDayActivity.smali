.class public Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;
.super Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;
.source "ScheduleDayActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final DAY_ID_EXTRA:Ljava/lang/String; = "day_id"

.field public static final FILTER_CATEGORIES_EXTRA:Ljava/lang/String; = "filter_categories"

.field public static final FILTER_FAVORITE_EXTRA:Ljava/lang/String; = "is_favorite"


# instance fields
.field private dayId:Ljava/lang/String;

.field private db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private isFavourite:Z

.field private mDayListCursor:Luk/co/alt236/easycursor/EasyCursor;

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

.field private mHandler:Landroid/os/Handler;

.field private mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

.field private mIsBookmarked:Z

.field private mRefreshOnResume:Z

.field private mScheduleView:Landroid/view/View;

.field private mSearchKeyword:Ljava/lang/String;

.field private mTracksCursor:Luk/co/alt236/easycursor/EasyCursor;

.field private mTracksView:Landroid/view/View;

.field private mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

.field private mViewHelper:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;-><init>()V

    .line 76
    iput-boolean v0, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->isFavourite:Z

    .line 77
    iput-boolean v0, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mIsBookmarked:Z

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mScheduleView:Landroid/view/View;

    return-object v0
.end method

.method private loadDayListCursor()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 269
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mIsBookmarked:Z

    if-eqz v0, :cond_0

    .line 270
    const-class v0, Lcom/genie_connect/android/repository/FavouriteSessionRepository;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/FavouriteSessionRepository;

    invoke-virtual {v0}, Lcom/genie_connect/android/repository/FavouriteSessionRepository;->getMyBookmarks()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mDayListCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 276
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->isFavourite:Z

    if-eqz v0, :cond_1

    .line 272
    const-class v0, Lcom/genie_connect/android/repository/AgendaItemRepository;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/AgendaItemRepository;

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->dayId:Ljava/lang/String;

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v4, v2}, Lcom/genie_connect/android/repository/AgendaItemRepository;->getMyAgenda(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mDayListCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto :goto_0

    .line 274
    :cond_1
    const-class v0, Lcom/genie_connect/android/repository/SessionRepository;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/SessionRepository;

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->dayId:Ljava/lang/String;

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mSearchKeyword:Ljava/lang/String;

    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/genie_connect/android/repository/SessionRepository;->getSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mDayListCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto :goto_0
.end method

.method private loadTracksCursor()V
    .locals 4

    .prologue
    .line 279
    const-class v0, Lcom/genie_connect/android/repository/TrackRepository;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/TrackRepository;

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->dayId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->isFavourite:Z

    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/repository/TrackRepository;->getTracks(Ljava/lang/String;ZLjava/util/List;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mTracksCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 280
    return-void
.end method

.method private refreshView()V
    .locals 5

    .prologue
    .line 163
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mScheduleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->loadDayListCursor()V

    .line 165
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mViewHelper:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mScheduleView:Landroid/view/View;

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mDayListCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->updateScheduleListView(Landroid/view/View;Luk/co/alt236/easycursor/EasyCursor;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mTracksView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 169
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->loadTracksCursor()V

    .line 170
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mViewHelper:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mTracksView:Landroid/view/View;

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mTracksCursor:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mFilterList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mSearchKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->updateScheduleExpandableListView(Landroid/view/View;Luk/co/alt236/easycursor/EasyCursor;Ljava/util/List;Ljava/lang/String;)V

    .line 172
    :cond_1
    return-void
.end method

.method private scrollToNow()V
    .locals 14

    .prologue
    .line 181
    iget-object v10, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mScheduleView:Landroid/view/View;

    if-eqz v10, :cond_3

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 185
    .local v0, "currentNow":J
    const/4 v2, 0x0

    .line 187
    .local v2, "currentPosi":I
    iget-object v10, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mDayListCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v10}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/genie_connect/android/db/config/AppConfig;->getTimeZoneOfEvent()Ljava/util/TimeZone;

    move-result-object v4

    .line 191
    .local v4, "eventTimeZone":Ljava/util/TimeZone;
    :cond_0
    iget-object v10, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mDayListCursor:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v11, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mDayListCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v12, "runningTime_from"

    invoke-interface {v11, v12}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 192
    .local v9, "sessionStartTime":Ljava/lang/String;
    invoke-static {v9}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertSqliteStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 194
    .local v3, "date":Ljava/util/Date;
    invoke-virtual {v4, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v10

    int-to-long v10, v10

    add-long v6, v0, v10

    .line 197
    .local v6, "now":J
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 199
    .local v5, "nowDate":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getDay()I

    move-result v10

    invoke-virtual {v3}, Ljava/util/Date;->getDay()I

    move-result v11

    if-ne v10, v11, :cond_1

    .line 200
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v10, v10, v6

    if-lez v10, :cond_4

    .line 207
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mDayListCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v10}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 210
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "eventTimeZone":Ljava/util/TimeZone;
    .end local v5    # "nowDate":Ljava/util/Date;
    .end local v6    # "now":J
    .end local v9    # "sessionStartTime":Ljava/lang/String;
    :cond_2
    move v8, v2

    .line 211
    .local v8, "scrollToPos":I
    iget-object v10, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity$1;

    invoke-direct {v11, p0, v8}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity$1;-><init>(Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;I)V

    const-wide/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    .end local v0    # "currentNow":J
    .end local v2    # "currentPosi":I
    .end local v8    # "scrollToPos":I
    :cond_3
    return-void

    .line 204
    .restart local v0    # "currentNow":J
    .restart local v2    # "currentPosi":I
    .restart local v3    # "date":Ljava/util/Date;
    .restart local v4    # "eventTimeZone":Ljava/util/TimeZone;
    .restart local v5    # "nowDate":Ljava/util/Date;
    .restart local v6    # "now":J
    .restart local v9    # "sessionStartTime":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 96
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, "track":Ljava/lang/Object;
    check-cast v0, Ljava/lang/String;

    .end local v0    # "track":Ljava/lang/Object;
    invoke-static {v0}, Lcom/eventgenie/android/ui/help/SessionHelper;->getScheduleItemType(Ljava/lang/String;)Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    move-result-object v1

    .line 98
    .local v1, "type":Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;
    invoke-static {p0, v1, p5, p6}, Lcom/eventgenie/android/ui/help/SessionHelper;->onScheduleItemClick(Landroid/content/Context;Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;J)V

    .line 99
    const/4 v2, 0x1

    return v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    sget v1, Lcom/eventgenie/android/R$layout;->generic_viewpagerindicator:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->setContentView(I)V

    .line 107
    new-instance v1, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mViewHelper:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    .line 108
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 110
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 111
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 112
    const-string v1, "day_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->dayId:Ljava/lang/String;

    .line 113
    const-string v1, "is_favorite"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->isFavourite:Z

    .line 114
    const-string v1, "is_bookmarked"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mIsBookmarked:Z

    .line 115
    const-string v1, "filter_categories"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mFilterList:Ljava/util/ArrayList;

    .line 117
    const-string v1, "EXTRA_TAG_TEXT_FILTER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mSearchKeyword:Ljava/lang/String;

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setVisibility(Z)V

    .line 123
    new-instance v1, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-direct {v1}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;-><init>()V

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    .line 125
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 126
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 128
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->setupTabs()V

    .line 129
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mDayListCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->close(Landroid/database/Cursor;)V

    .line 134
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mTracksCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->close(Landroid/database/Cursor;)V

    .line 135
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onDestroy()V

    .line 136
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 140
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/eventgenie/android/R$id;->session_row:I

    if-ne v2, v3, :cond_0

    .line 141
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mDayListCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v3, "itemTypes"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "itemType":Ljava/lang/String;
    invoke-static {v0}, Lcom/eventgenie/android/ui/help/SessionHelper;->getScheduleItemType(Ljava/lang/String;)Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    move-result-object v1

    .line 143
    .local v1, "type":Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;
    invoke-static {p0, v1, p4, p5}, Lcom/eventgenie/android/ui/help/SessionHelper;->onScheduleItemClick(Landroid/content/Context;Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;J)V

    .line 146
    .end local v0    # "itemType":Ljava/lang/String;
    .end local v1    # "type":Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mRefreshOnResume:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->refreshView()V

    .line 158
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mRefreshOnResume:Z

    .line 159
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onResume()V

    .line 160
    return-void

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->scrollToNow()V

    goto :goto_0
.end method

.method protected setupTabs()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ SESSIONS-DAY-setupTabs() : \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->dayId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->isFavourite:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 236
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->loadDayListCursor()V

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ SESSIONS-DAY count: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mDayListCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v4}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 239
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mViewHelper:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mDayListCursor:Luk/co/alt236/easycursor/EasyCursor;

    iget-boolean v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->isFavourite:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v5, v1}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->getScheduleListView(Luk/co/alt236/easycursor/EasyCursor;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mScheduleView:Landroid/view/View;

    .line 240
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mScheduleView:Landroid/view/View;

    sget v5, Lcom/eventgenie/android/R$string;->tab_by_time:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 242
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mIsBookmarked:Z

    if-nez v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mDayListCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->loadTracksCursor()V

    .line 248
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mViewHelper:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mTracksCursor:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->dayId:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->isFavourite:Z

    iget-object v7, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->getScheduleExpandableListView(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;ZLjava/util/List;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mTracksView:Landroid/view/View;

    .line 249
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mTracksView:Landroid/view/View;

    sget v5, Lcom/eventgenie/android/R$string;->by_noun_format:I

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    sget-object v8, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->TRACKS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v9, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v7, v8, v9}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v1}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mViewHelper:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    sget v4, Lcom/eventgenie/android/R$string;->message_no_itemname_found:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    sget-object v7, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v8, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v6, v7, v8}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->getTextView(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v0

    .line 256
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    sget v4, Lcom/eventgenie/android/R$string;->by_noun_format:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->TRACKS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v7, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p0, v4, v2}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 259
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 260
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 261
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v1}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 263
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v1}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->shouldHideIndicator()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/astuetz/PagerSlidingTabStrip;->setVisibility(I)V

    .line 266
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 239
    goto/16 :goto_0
.end method
