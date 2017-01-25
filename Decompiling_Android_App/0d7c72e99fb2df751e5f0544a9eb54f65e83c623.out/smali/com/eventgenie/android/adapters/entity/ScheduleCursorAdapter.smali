.class public Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;
.super Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;
.source "ScheduleCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter$1;
    }
.end annotation


# static fields
.field public static final IS_SECTION_VIEW:Ljava/lang/String; = "IS_SECTION_VIEW"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayFav:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mIsScheduleView:Z

.field private final mItemLayout:I

.field private final mShowEntityId:Z

.field sectionNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;IZZI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "flags"    # I
    .param p4, "displayFavIndicator"    # Z
    .param p5, "isScheduleView"    # Z
    .param p6, "layout"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 81
    if-eqz p2, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SCH CURSOR COUNT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 85
    :cond_0
    iput-boolean p5, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mIsScheduleView:Z

    .line 86
    iput-boolean p4, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mDisplayFav:Z

    .line 87
    iput-object p1, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mContext:Landroid/content/Context;

    .line 88
    iput p6, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mItemLayout:I

    .line 89
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 90
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isShowEntityIdsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mShowEntityId:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->sectionNames:Ljava/util/ArrayList;

    .line 93
    invoke-direct {p0, p2}, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->populateSectionNames(Landroid/database/Cursor;)V

    .line 94
    return-void
.end method

.method private populateSectionNames(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 97
    if-eqz p1, :cond_2

    .line 98
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 99
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->sectionNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 101
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->getSectionFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "section":Ljava/lang/String;
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->sectionNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->sectionNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    .end local v0    # "section":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private setUpContentToView(Landroid/view/View;Landroid/database/Cursor;)Landroid/view/View;
    .locals 8
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 205
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    invoke-direct {v0, p2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;-><init>(Landroid/database/Cursor;)V

    .line 206
    .local v0, "ec":Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " SCH CURSOR setUpContentToView "

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

    .line 207
    iget-boolean v4, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mShowEntityId:Z

    if-eqz v4, :cond_1

    .line 208
    sget v4, Lcom/eventgenie/android/R$id;->name:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "id"

    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v5, "name"

    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->joinIdAndName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :goto_0
    iget-object v5, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/eventgenie/android/R$id;->waitlist_label:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v5, v0, v4}, Lcom/eventgenie/android/ui/help/UIUtils;->setWaitlistLabel(Landroid/content/Context;Luk/co/alt236/easycursor/EasyCursor;Landroid/widget/TextView;)V

    .line 220
    iget-object v5, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/eventgenie/android/R$id;->location:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v6, "location"

    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/eventgenie/android/utils/help/dateutils/ScheduleUtils;->mapListTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 222
    iget-object v5, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/eventgenie/android/R$id;->start:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v6, "runningTime_from"

    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/eventgenie/android/utils/help/dateutils/ScheduleUtils;->mapListTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 224
    iget-object v5, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/eventgenie/android/R$id;->end:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v6, "runningTime_to"

    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/eventgenie/android/utils/help/dateutils/ScheduleUtils;->mapListTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 226
    iget-object v5, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/eventgenie/android/R$id;->color_indicator:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v6, "colour"

    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/eventgenie/android/utils/help/dateutils/ScheduleUtils;->mapListTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 229
    const-string/jumbo v4, "track"

    invoke-virtual {v0, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "track":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 233
    sget v4, Lcom/eventgenie/android/R$id;->favourite_star:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 235
    .local v1, "f":Landroid/widget/ImageView;
    sget-object v3, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->OTHER:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    .line 237
    .local v3, "type":Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;
    const-string v4, "itemTypes"

    invoke-virtual {v0, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 238
    const-string v4, "itemTypes"

    invoke-virtual {v0, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/ui/help/SessionHelper;->getScheduleItemType(Ljava/lang/String;)Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    move-result-object v3

    .line 241
    :cond_0
    sget-object v4, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter$1;->$SwitchMap$com$eventgenie$android$ui$help$SessionHelper$ScheduleItemType:[I

    invoke-virtual {v3}, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 259
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->setMeetingBackground(Landroid/view/View;Luk/co/alt236/easycursor/EasyCursor;)V

    .line 263
    return-object p1

    .line 213
    .end local v1    # "f":Landroid/widget/ImageView;
    .end local v2    # "track":Ljava/lang/String;
    .end local v3    # "type":Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;
    :cond_1
    sget v4, Lcom/eventgenie/android/R$id;->name:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "name"

    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 243
    .restart local v1    # "f":Landroid/widget/ImageView;
    .restart local v2    # "track":Ljava/lang/String;
    .restart local v3    # "type":Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;
    :pswitch_0
    const-string v4, "My Meetings"

    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 244
    iget-object v4, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/eventgenie/android/ui/help/SessionHelper;->getMeetingIcon(Landroid/content/Context;Luk/co/alt236/easycursor/EasyCursor;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 247
    :pswitch_1
    const-string v4, "My Ad hoc Meetings"

    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 248
    sget v4, Lcom/eventgenie/android/R$drawable;->meeting_adhoc:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 252
    :pswitch_2
    iget-boolean v4, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mDisplayFav:Z

    if-eqz v4, :cond_2

    .line 253
    iget-boolean v4, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mIsScheduleView:Z

    invoke-static {v0, v1, v4}, Lcom/eventgenie/android/ui/help/UIUtils;->setAgendaAndNoteIcon(Luk/co/alt236/easycursor/EasyCursor;Landroid/widget/ImageView;Z)V

    goto :goto_1

    .line 255
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected bindItemView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 172
    const-string v0, " SCH CURSOR bindItemView"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, p1, p3}, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->setUpContentToView(Landroid/view/View;Landroid/database/Cursor;)Landroid/view/View;

    move-result-object p1

    .line 174
    return-void
.end method

.method protected bindSectionView(Landroid/view/View;Landroid/content/Context;ILjava/lang/Object;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 178
    const-string v1, " SCH CURSOR bindSectionView"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->sectionNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 180
    sget v1, Lcom/eventgenie/android/R$id;->tvSection:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 181
    .local v0, "tv":Landroid/widget/TextView;
    check-cast p4, Ljava/lang/String;

    .end local p4    # "arg3":Ljava/lang/Object;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 184
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->populateSectionNames(Landroid/database/Cursor;)V

    .line 118
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 279
    invoke-super {p0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getCount()I

    move-result v0

    .line 280
    .local v0, "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " SCH CURSOR COUNT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 281
    return v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "listPosition"    # I

    .prologue
    .line 129
    iget-object v2, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->getCursorPositionWithoutSections(I)I

    move-result v1

    .line 131
    .local v1, "cursorPos":I
    iget-object v2, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 133
    .local v0, "columnPos":I
    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    .line 134
    iget-object v2, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 135
    iget-object v2, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 139
    .end local v0    # "columnPos":I
    .end local v1    # "cursorPos":I
    :goto_0
    return-wide v2

    :cond_0
    invoke-super {p0, p1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method protected bridge synthetic getSectionFromCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->getSectionFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSectionFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6
    .param p1, "arg0"    # Landroid/database/Cursor;

    .prologue
    .line 188
    const-string v4, " SCH CURSOR getSectionFromCursor"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 189
    new-instance v1, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    invoke-direct {v1, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;-><init>(Landroid/database/Cursor;)V

    .line 190
    .local v1, "ec":Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;
    const-string v4, "runningTime_from"

    invoke-virtual {v1, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 191
    .local v3, "ret":Ljava/lang/String;
    invoke-static {v3}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v0

    .line 192
    .local v0, "date":Ljava/sql/Date;
    const-string v2, "EEEE, dd MMM, yyyy"

    .line 193
    .local v2, "format":Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    return-object v4
.end method

.method protected newItemView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 198
    const-string v1, " SCH CURSOR newItemView"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mItemLayout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, "convertView":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->setUpContentToView(Landroid/view/View;Landroid/database/Cursor;)Landroid/view/View;

    .line 201
    return-object v0
.end method

.method protected newSectionView(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 268
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->sectionNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 269
    const-string v1, " SCH CURSOR newSectionView"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/eventgenie/android/R$layout;->section_layout:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 274
    .end local v0    # "v":Landroid/view/View;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setMeetingBackground(Landroid/view/View;Luk/co/alt236/easycursor/EasyCursor;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/eventgenie/android/ui/help/SessionHelper;->getScheduleItemType(Ljava/lang/String;)Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->MEETING:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    if-ne v2, v3, :cond_4

    .line 151
    const-string v2, "status"

    invoke-interface {p2, v2}, Luk/co/alt236/easycursor/EasyCursor;->optIntAsWrapperType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 152
    .local v1, "status":Ljava/lang/Integer;
    if-eqz v1, :cond_3

    .line 153
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 154
    :cond_0
    sget v0, Lcom/eventgenie/android/R$drawable;->list_item_background_meeting_confirmed:I

    .line 167
    .end local v1    # "status":Ljava/lang/Integer;
    .local v0, "bgResource":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 168
    return-void

    .line 155
    .end local v0    # "bgResource":I
    .restart local v1    # "status":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 156
    sget v0, Lcom/eventgenie/android/R$drawable;->list_item_background_meeting_pending:I

    .restart local v0    # "bgResource":I
    goto :goto_0

    .line 158
    .end local v0    # "bgResource":I
    :cond_2
    sget v0, Lcom/eventgenie/android/R$drawable;->list_item_background_selector:I

    .restart local v0    # "bgResource":I
    goto :goto_0

    .line 161
    .end local v0    # "bgResource":I
    :cond_3
    sget v0, Lcom/eventgenie/android/R$drawable;->list_item_background_selector:I

    .restart local v0    # "bgResource":I
    goto :goto_0

    .line 164
    .end local v0    # "bgResource":I
    .end local v1    # "status":Ljava/lang/Integer;
    :cond_4
    sget v0, Lcom/eventgenie/android/R$drawable;->list_item_background_selector:I

    .restart local v0    # "bgResource":I
    goto :goto_0
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/eventgenie/android/adapters/entity/ScheduleCursorAdapter;->populateSectionNames(Landroid/database/Cursor;)V

    .line 124
    invoke-super {p0, p1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
