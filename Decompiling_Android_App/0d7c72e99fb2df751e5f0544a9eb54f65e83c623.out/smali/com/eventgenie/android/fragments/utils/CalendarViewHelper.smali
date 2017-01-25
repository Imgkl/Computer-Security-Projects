.class public Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;
.super Lcom/eventgenie/android/fragments/utils/BaseViewHelper;
.source "CalendarViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;
    }
.end annotation


# instance fields
.field private day:Ljava/lang/String;

.field private isFavourite:Z

.field private mFilterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "a"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->day:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->isFavourite:Z

    return v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->mFilterList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->mSearchKeyword:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createExpandableListView(Landroid/widget/ResourceCursorTreeAdapter;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/widget/ResourceCursorTreeAdapter;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->createExpandableListView(Landroid/widget/ResourceCursorTreeAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createListFragment(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "x0"    # Landroid/widget/ListAdapter;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->createListFragment(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createListFragmentInfo(IILjava/lang/String;)Lcom/eventgenie/android/container/FragmentInfo;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->createListFragmentInfo(IILjava/lang/String;)Lcom/eventgenie/android/container/FragmentInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/widget/ListAdapter;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getScheduleExpandableListView(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;ZLjava/util/List;)Landroid/view/View;
    .locals 10
    .param p1, "tracks"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "dayId"    # Ljava/lang/String;
    .param p3, "isFavourite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/co/alt236/easycursor/EasyCursor;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 89
    .local p4, "categoryFilterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p4, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->mFilterList:Ljava/util/List;

    .line 91
    if-nez p2, :cond_0

    .line 92
    const/4 v1, 0x0

    .line 115
    :goto_0
    return-object v1

    .line 97
    :cond_0
    iput-object p2, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->day:Ljava/lang/String;

    .line 98
    iput-boolean p3, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->isFavourite:Z

    .line 100
    new-instance v0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$layout;->list_item_session_track:I

    sget v5, Lcom/eventgenie/android/R$layout;->list_item_session:I

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "track"

    aput-object v2, v6, v1

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const v2, 0x1020014

    aput v2, v7, v1

    const/4 v1, 0x5

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v8, v1

    const/4 v1, 0x1

    const-string v2, "runningTime_from"

    aput-object v2, v8, v1

    const/4 v1, 0x2

    const-string v2, "runningTime_to"

    aput-object v2, v8, v1

    const/4 v1, 0x3

    const-string v2, "colour"

    aput-object v2, v8, v1

    const/4 v1, 0x4

    const-string v2, "location"

    aput-object v2, v8, v1

    const/4 v1, 0x5

    new-array v9, v1, [I

    const/4 v1, 0x0

    sget v2, Lcom/eventgenie/android/R$id;->name:I

    aput v2, v9, v1

    const/4 v1, 0x1

    sget v2, Lcom/eventgenie/android/R$id;->start:I

    aput v2, v9, v1

    const/4 v1, 0x2

    sget v2, Lcom/eventgenie/android/R$id;->end:I

    aput v2, v9, v1

    const/4 v1, 0x3

    sget v2, Lcom/eventgenie/android/R$id;->color_indicator:I

    aput v2, v9, v1

    const/4 v1, 0x4

    sget v2, Lcom/eventgenie/android/R$id;->location:I

    aput v2, v9, v1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;-><init>(Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;Luk/co/alt236/easycursor/EasyCursor;Landroid/content/Context;II[Ljava/lang/String;[I[Ljava/lang/String;[I)V

    .line 115
    .local v0, "adapter":Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;
    const-string v1, "ExpandableList"

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->createExpandableListView(Landroid/widget/ResourceCursorTreeAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getScheduleListView(Luk/co/alt236/easycursor/EasyCursor;Z)Landroid/view/View;
    .locals 4
    .param p1, "c"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "isScheduleView"    # Z

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, v3, p2}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getSessionListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;ZZ)Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;

    move-result-object v0

    .line 138
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const-string v1, "SessionsList"

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getTextView(Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 3
    .param p1, "string"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, -0x1

    .line 149
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 152
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    return-object v0
.end method

.method public bridge synthetic getTitleColour()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->getTitleColour()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public updateScheduleExpandableListView(Landroid/view/View;Luk/co/alt236/easycursor/EasyCursor;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tracks"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p4, "searchKeywords"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Luk/co/alt236/easycursor/EasyCursor;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    .local p3, "categoryFilterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v2, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    .line 128
    .local v1, "listView":Landroid/widget/ExpandableListView;
    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;

    .line 130
    .local v0, "adapter":Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;
    iput-object p3, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->mFilterList:Ljava/util/List;

    .line 131
    iput-object p4, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->mSearchKeyword:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, p2}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->setGroupCursor(Landroid/database/Cursor;)V

    .line 134
    return-void
.end method

.method public updateScheduleListView(Landroid/view/View;Luk/co/alt236/easycursor/EasyCursor;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "c"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 142
    sget v2, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 143
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;

    .line 145
    .local v0, "adapter":Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;
    invoke-virtual {v0, p2}, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 146
    return-void
.end method
