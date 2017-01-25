.class Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "CalendarViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryExpandableListAdapter"
.end annotation


# instance fields
.field private mSessionsCursor:Luk/co/alt236/easycursor/EasyCursor;

.field private mTracks:Luk/co/alt236/easycursor/EasyCursor;

.field final synthetic this$0:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;Luk/co/alt236/easycursor/EasyCursor;Landroid/content/Context;II[Ljava/lang/String;[I[Ljava/lang/String;[I)V
    .locals 9
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "groupLayout"    # I
    .param p5, "childLayout"    # I
    .param p6, "groupFrom"    # [Ljava/lang/String;
    .param p7, "groupTo"    # [I
    .param p8, "childrenFrom"    # [Ljava/lang/String;
    .param p9, "childrenTo"    # [I

    .prologue
    .line 160
    iput-object p1, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->this$0:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move v3, p4

    move-object v4, p6

    move-object/from16 v5, p7

    move v6, p5

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 161
    invoke-direct/range {v0 .. v8}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    .line 162
    iput-object p2, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->mTracks:Luk/co/alt236/easycursor/EasyCursor;

    .line 163
    return-void
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 188
    iget-object v2, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->mTracks:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v2, p1}, Luk/co/alt236/easycursor/EasyCursor;->moveToPosition(I)Z

    .line 190
    iget-object v2, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->this$0:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    # getter for: Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->isFavourite:Z
    invoke-static {v2}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->access$100(Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v2

    const-class v4, Lcom/genie_connect/android/repository/AgendaItemRepository;

    invoke-virtual {v2, v4}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/repository/AgendaItemRepository;

    iget-object v4, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->this$0:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    # getter for: Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->day:Ljava/lang/String;
    invoke-static {v4}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->access$000(Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->mTracks:Luk/co/alt236/easycursor/EasyCursor;

    const-string/jumbo v6, "track"

    invoke-interface {v5, v6}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v7}, Lcom/genie_connect/android/repository/AgendaItemRepository;->getMyAgenda(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->mSessionsCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 197
    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/widget/SimpleCursorTreeAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 199
    iget-object v2, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->mSessionsCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v2, p2}, Luk/co/alt236/easycursor/EasyCursor;->moveToPosition(I)Z

    .line 201
    iget-object v2, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->mSessionsCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v4, "itemTypes"

    invoke-interface {v2, v4}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 203
    sget v2, Lcom/eventgenie/android/R$id;->favourite_star:I

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 205
    .local v0, "f":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->mSessionsCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string/jumbo v4, "track"

    invoke-interface {v2, v4}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "track":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "My Meetings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->this$0:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->mSessionsCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-static {v2, v4}, Lcom/eventgenie/android/ui/help/SessionHelper;->getMeetingIcon(Landroid/content/Context;Luk/co/alt236/easycursor/EasyCursor;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    const-string v2, "My Meetings"

    invoke-virtual {p4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 211
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    :goto_1
    iget-object v2, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->this$0:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->mSessionsCursor:Luk/co/alt236/easycursor/EasyCursor;

    sget v2, Lcom/eventgenie/android/R$id;->waitlist_label:I

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3, v4, v2}, Lcom/eventgenie/android/ui/help/UIUtils;->setWaitlistLabel(Landroid/content/Context;Luk/co/alt236/easycursor/EasyCursor;Landroid/widget/TextView;)V

    .line 222
    return-object p4

    .line 193
    .end local v0    # "f":Landroid/widget/ImageView;
    .end local v1    # "track":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v2

    const-class v4, Lcom/genie_connect/android/repository/SessionRepository;

    invoke-virtual {v2, v4}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/repository/SessionRepository;

    iget-object v4, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->this$0:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    # getter for: Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->day:Ljava/lang/String;
    invoke-static {v4}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->access$000(Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->mTracks:Luk/co/alt236/easycursor/EasyCursor;

    const-string/jumbo v6, "track"

    invoke-interface {v5, v6}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v7, v7}, Lcom/genie_connect/android/repository/SessionRepository;->getSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->mSessionsCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto :goto_0

    .line 214
    .restart local v0    # "f":Landroid/widget/ImageView;
    .restart local v1    # "track":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->mSessionsCursor:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v2, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->this$0:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    # getter for: Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->isFavourite:Z
    invoke-static {v2}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->access$100(Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-static {v4, v0, v2}, Lcom/eventgenie/android/ui/help/UIUtils;->setAgendaAndNoteIcon(Luk/co/alt236/easycursor/EasyCursor;Landroid/widget/ImageView;Z)V

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 5
    .param p1, "groupCursor"    # Landroid/database/Cursor;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->this$0:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    # getter for: Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->day:Ljava/lang/String;
    invoke-static {v1}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->access$000(Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 183
    :goto_0
    return-object v1

    .line 175
    :cond_0
    const-string/jumbo v1, "track"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "track":Ljava/lang/String;
    iget-object v1, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->this$0:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    # getter for: Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->isFavourite:Z
    invoke-static {v1}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->access$100(Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v1

    const-class v2, Lcom/genie_connect/android/repository/AgendaItemRepository;

    invoke-virtual {v1, v2}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/repository/AgendaItemRepository;

    iget-object v2, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->this$0:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    # getter for: Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->day:Ljava/lang/String;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->access$000(Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->this$0:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    # getter for: Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->mFilterList:Ljava/util/List;
    invoke-static {v3}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->access$200(Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/genie_connect/android/repository/AgendaItemRepository;->getMyAgenda(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->mSessionsCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 183
    :goto_1
    iget-object v1, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->mSessionsCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto :goto_0

    .line 179
    :cond_1
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v1

    const-class v2, Lcom/genie_connect/android/repository/SessionRepository;

    invoke-virtual {v1, v2}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/repository/SessionRepository;

    iget-object v2, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->this$0:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    # getter for: Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->day:Ljava/lang/String;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->access$000(Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->this$0:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    # getter for: Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->mSearchKeyword:Ljava/lang/String;
    invoke-static {v3}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->access$300(Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->this$0:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    # getter for: Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->mFilterList:Ljava/util/List;
    invoke-static {v4}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->access$200(Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/genie_connect/android/repository/SessionRepository;->getSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->mSessionsCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto :goto_1
.end method

.method public setGroupCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->setGroupCursor(Landroid/database/Cursor;)V

    .line 168
    check-cast p1, Luk/co/alt236/easycursor/EasyCursor;

    .end local p1    # "cursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->mTracks:Luk/co/alt236/easycursor/EasyCursor;

    .line 169
    return-void
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper$CategoryExpandableListAdapter;->this$0:Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/utils/CalendarViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/eventgenie/android/utils/help/dateutils/ScheduleUtils;->mapListTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-super {p0, p1, p2}, Landroid/widget/SimpleCursorTreeAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 230
    :cond_0
    return-void
.end method
