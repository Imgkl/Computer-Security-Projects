.class Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;
.super Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;
.source "SubsessionCursorAdapter.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mIsAgendaView:Z

.field private final mItemLayout:I

.field private final mShowEntityId:Z

.field private sectionNames:Ljava/util/ArrayList;
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
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "flags"    # I
    .param p4, "displayFavIndicator"    # Z
    .param p5, "isAgendaView"    # Z
    .param p6, "layout"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 71
    iput-boolean p5, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->mIsAgendaView:Z

    .line 72
    iput-object p1, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->mContext:Landroid/content/Context;

    .line 73
    iput p6, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->mItemLayout:I

    .line 74
    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isShowEntityIdsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->mShowEntityId:Z

    .line 75
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->sectionNames:Ljava/util/ArrayList;

    .line 79
    invoke-direct {p0, p2}, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->populateSectionNames(Landroid/database/Cursor;)V

    .line 81
    return-void
.end method

.method private populateSectionNames(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 84
    if-eqz p1, :cond_2

    .line 85
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 86
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->sectionNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 88
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->getSectionFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "section":Ljava/lang/String;
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->sectionNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->sectionNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    .end local v0    # "section":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private setUpContentToView(Landroid/view/View;Landroid/database/Cursor;)Landroid/view/View;
    .locals 6
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 129
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    invoke-direct {v0, p2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;-><init>(Landroid/database/Cursor;)V

    .line 131
    .local v0, "ec":Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;
    sget v3, Lcom/eventgenie/android/R$id;->name:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 133
    .local v2, "nameTextView":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 135
    iget-boolean v3, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->mShowEntityId:Z

    if-eqz v3, :cond_1

    .line 136
    const-string v3, "id"

    invoke-virtual {v0, v3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v3, "name"

    invoke-virtual {v0, v3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->joinIdAndName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_0
    iget-object v4, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/eventgenie/android/R$id;->start:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v5, "runningTime_from"

    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/eventgenie/android/utils/help/dateutils/ScheduleUtils;->mapListTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 146
    iget-object v4, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/eventgenie/android/R$id;->end:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v5, "runningTime_to"

    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/eventgenie/android/utils/help/dateutils/ScheduleUtils;->mapListTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 148
    iget-object v4, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/eventgenie/android/R$id;->location:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v5, "location"

    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/eventgenie/android/utils/help/dateutils/ScheduleUtils;->mapListTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 153
    sget v3, Lcom/eventgenie/android/R$id;->favourite_star:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 154
    .local v1, "f":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 155
    check-cast v1, Landroid/widget/ImageView;

    .end local v1    # "f":Landroid/view/View;
    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/eventgenie/android/ui/help/UIUtils;->setAgendaAndNoteIcon(Luk/co/alt236/easycursor/EasyCursor;Landroid/widget/ImageView;Z)V

    .line 158
    :cond_0
    return-object p1

    .line 141
    :cond_1
    const-string v3, "name"

    invoke-virtual {v0, v3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected bindItemView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 173
    invoke-direct {p0, p1, p3}, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->setUpContentToView(Landroid/view/View;Landroid/database/Cursor;)Landroid/view/View;

    .line 174
    return-void
.end method

.method protected bindSectionView(Landroid/view/View;Landroid/content/Context;ILjava/lang/Object;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/content/Context;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 179
    const-string v1, " SCH CURSOR bindSectionView"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->sectionNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 181
    sget v1, Lcom/eventgenie/android/R$id;->tvSection:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 182
    .local v0, "tv":Landroid/widget/TextView;
    check-cast p4, Ljava/lang/String;

    .end local p4    # "arg3":Ljava/lang/Object;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 185
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->populateSectionNames(Landroid/database/Cursor;)V

    .line 124
    invoke-super {p0, p1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 125
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 208
    invoke-super {p0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getCount()I

    move-result v0

    .line 209
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

    .line 210
    return v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "listPosition"    # I

    .prologue
    .line 102
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->getCursorPositionWithoutSections(I)I

    move-result v0

    .line 105
    .local v0, "cursorPos":I
    if-ltz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 107
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->mCursor:Landroid/database/Cursor;

    const-string v3, "id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 111
    .end local v0    # "cursorPos":I
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
    .line 57
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->getSectionFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSectionFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6
    .param p1, "arg0"    # Landroid/database/Cursor;

    .prologue
    .line 163
    const-string v4, " SCH CURSOR getSectionFromCursor"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 164
    new-instance v1, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    invoke-direct {v1, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;-><init>(Landroid/database/Cursor;)V

    .line 165
    .local v1, "ec":Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;
    const-string v4, "runningTime_from"

    invoke-virtual {v1, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 166
    .local v3, "ret":Ljava/lang/String;
    invoke-static {v3}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v0

    .line 167
    .local v0, "date":Ljava/sql/Date;
    const-string v2, "EEEE, dd MMM, yyyy"

    .line 168
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
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 189
    const-string v1, " SCH CURSOR newItemView"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->mItemLayout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 191
    .local v0, "convertView":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->setUpContentToView(Landroid/view/View;Landroid/database/Cursor;)Landroid/view/View;

    .line 192
    return-object v0
.end method

.method protected newSectionView(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 197
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->sectionNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 198
    const-string v1, " SCH CURSOR newSectionView"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/eventgenie/android/R$layout;->section_layout:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 203
    .end local v0    # "v":Landroid/view/View;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/eventgenie/android/adapters/entity/SubsessionCursorAdapter;->populateSectionNames(Landroid/database/Cursor;)V

    .line 118
    invoke-super {p0, p1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
