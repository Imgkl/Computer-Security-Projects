.class public Lcom/eventgenie/android/adapters/entity/FavouriteSessionCursorAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "FavouriteSessionCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/adapters/entity/FavouriteSessionCursorAdapter$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "flags"    # I

    .prologue
    .line 34
    invoke-direct/range {p0 .. p6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 35
    return-void
.end method

.method private setUpContentToView(Landroid/view/View;Landroid/database/Cursor;)Landroid/view/View;
    .locals 7
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 60
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    invoke-direct {v0, p2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;-><init>(Landroid/database/Cursor;)V

    .line 61
    .local v0, "ec":Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " FavouriteSession CURSOR setUpContentToView "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 63
    sget v4, Lcom/eventgenie/android/R$id;->name:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "name"

    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v5, p0, Lcom/eventgenie/android/adapters/entity/FavouriteSessionCursorAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/eventgenie/android/R$id;->location:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v6, "location"

    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/eventgenie/android/utils/help/dateutils/ScheduleUtils;->mapListTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 67
    iget-object v5, p0, Lcom/eventgenie/android/adapters/entity/FavouriteSessionCursorAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/eventgenie/android/R$id;->start:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v6, "runningTime_from"

    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/eventgenie/android/utils/help/dateutils/ScheduleUtils;->mapListTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 69
    iget-object v5, p0, Lcom/eventgenie/android/adapters/entity/FavouriteSessionCursorAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/eventgenie/android/R$id;->end:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v6, "runningTime_to"

    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/eventgenie/android/utils/help/dateutils/ScheduleUtils;->mapListTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 71
    iget-object v5, p0, Lcom/eventgenie/android/adapters/entity/FavouriteSessionCursorAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/eventgenie/android/R$id;->color_indicator:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v6, "colour"

    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/eventgenie/android/utils/help/dateutils/ScheduleUtils;->mapListTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 74
    iget-object v5, p0, Lcom/eventgenie/android/adapters/entity/FavouriteSessionCursorAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/eventgenie/android/R$id;->day:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v6, "eventDay"

    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/eventgenie/android/utils/help/dateutils/ScheduleUtils;->mapListTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 77
    const-string/jumbo v4, "track"

    invoke-virtual {v0, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "track":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    sget v4, Lcom/eventgenie/android/R$id;->favourite_star:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 82
    .local v1, "f":Landroid/widget/ImageView;
    sget-object v3, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->OTHER:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    .line 84
    .local v3, "type":Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;
    const-string v4, "itemTypes"

    invoke-virtual {v0, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 85
    const-string v4, "itemTypes"

    invoke-virtual {v0, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/ui/help/SessionHelper;->getScheduleItemType(Ljava/lang/String;)Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    move-result-object v3

    .line 88
    :cond_0
    sget-object v4, Lcom/eventgenie/android/adapters/entity/FavouriteSessionCursorAdapter$1;->$SwitchMap$com$eventgenie$android$ui$help$SessionHelper$ScheduleItemType:[I

    invoke-virtual {v3}, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 103
    :goto_0
    return-object p1

    .line 90
    :pswitch_0
    const-string v4, "My Meetings"

    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v4, p0, Lcom/eventgenie/android/adapters/entity/FavouriteSessionCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/eventgenie/android/ui/help/SessionHelper;->getMeetingIcon(Landroid/content/Context;Luk/co/alt236/easycursor/EasyCursor;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 94
    :pswitch_1
    const-string v4, "My Ad hoc Meetings"

    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    sget v4, Lcom/eventgenie/android/R$drawable;->meeting_adhoc:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 99
    :pswitch_2
    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/eventgenie/android/ui/help/UIUtils;->setAgendaAndNoteIcon(Luk/co/alt236/easycursor/EasyCursor;Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 39
    invoke-super {p0}, Landroid/support/v4/widget/SimpleCursorAdapter;->getCount()I

    move-result v0

    .line 40
    .local v0, "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ADD_TO_SCHEDULE SESSION CURSOR COUNT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 41
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/FavouriteSessionCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/eventgenie/android/adapters/entity/FavouriteSessionCursorAdapter;->setUpContentToView(Landroid/view/View;Landroid/database/Cursor;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
