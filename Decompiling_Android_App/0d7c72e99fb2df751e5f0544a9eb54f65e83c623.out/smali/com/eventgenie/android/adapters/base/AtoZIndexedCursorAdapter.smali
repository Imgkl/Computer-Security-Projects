.class public abstract Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "AtoZIndexedCursorAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private final mAlphaIndexColumn:Ljava/lang/String;

.field private final mColorTransparent:I

.field private final mDefaultFavDrawable:I

.field private final mIndexer:Lcom/eventgenie/android/adapters/base/AtoZIndexer;

.field private final mViewBinderProcessFullDescription:Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "alphaIndexColumn"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct/range {p0 .. p5}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 59
    new-instance v0, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter$1;-><init>(Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;)V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->mViewBinderProcessFullDescription:Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->mColorTransparent:I

    .line 81
    iput-object p6, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->mAlphaIndexColumn:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;

    iget-object v1, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->mAlphaIndexColumn:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/eventgenie/android/adapters/base/AtoZIndexer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->mIndexer:Lcom/eventgenie/android/adapters/base/AtoZIndexer;

    .line 84
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->mIndexer:Lcom/eventgenie/android/adapters/base/AtoZIndexer;

    invoke-virtual {v0, p3}, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->generateIndexes(Landroid/database/Cursor;)V

    .line 85
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->getDefaultDrawableForFav()I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->mDefaultFavDrawable:I

    .line 86
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->mViewBinderProcessFullDescription:Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->setViewBinder(Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 87
    return-void
.end method

.method private setFavourite(Landroid/view/View;Luk/co/alt236/easycursor/EasyCursor;)V
    .locals 4
    .param p1, "star"    # Landroid/view/View;
    .param p2, "c"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 150
    const-string v1, "entity"

    invoke-interface {p2, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "entityType":Ljava/lang/String;
    if-eqz v0, :cond_1

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    :cond_0
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "star":Landroid/view/View;
    const/4 v1, 0x1

    invoke-static {p2, p1, v1}, Lcom/eventgenie/android/ui/help/UIUtils;->setAgendaAndNoteIcon(Luk/co/alt236/easycursor/EasyCursor;Landroid/widget/ImageView;Z)V

    .line 163
    :goto_0
    return-void

    .line 157
    .restart local p1    # "star":Landroid/view/View;
    :cond_1
    invoke-static {p2}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->isFavoute(Luk/co/alt236/easycursor/EasyCursor;)Z

    move-result v1

    invoke-static {p2}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->hasNote(Luk/co/alt236/easycursor/EasyCursor;)Z

    move-result v2

    iget v3, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->mDefaultFavDrawable:I

    invoke-static {p1, v1, v2, v3}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->setFavourite(Landroid/view/View;ZZI)V

    goto :goto_0
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 92
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->mIndexer:Lcom/eventgenie/android/adapters/base/AtoZIndexer;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->generateIndexes(Landroid/database/Cursor;)V

    .line 93
    return-void
.end method

.method public bridge synthetic getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getCursor()Luk/co/alt236/easycursor/EasyCursor;
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/support/v4/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Luk/co/alt236/easycursor/EasyCursor;

    return-object v0
.end method

.method public getDefaultDrawableForFav()I
    .locals 1

    .prologue
    .line 108
    sget v0, Lcom/eventgenie/android/R$drawable;->ic_action_blue_important:I

    return v0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->mIndexer:Lcom/eventgenie/android/adapters/base/AtoZIndexer;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->mIndexer:Lcom/eventgenie/android/adapters/base/AtoZIndexer;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->mIndexer:Lcom/eventgenie/android/adapters/base/AtoZIndexer;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 128
    if-eqz p2, :cond_0

    .line 129
    sget v1, Lcom/eventgenie/android/R$id;->color_indicator:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, "c":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 131
    iget v1, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->mColorTransparent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 135
    .end local v0    # "c":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 136
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    invoke-interface {v1, p1}, Luk/co/alt236/easycursor/EasyCursor;->moveToPosition(I)Z

    .line 138
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->isFeatured(Luk/co/alt236/easycursor/EasyCursor;)Z

    move-result v1

    invoke-static {p2, v1}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->setFeatured(Landroid/view/View;Z)V

    .line 142
    sget v1, Lcom/eventgenie/android/R$id;->favourite_star:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->setFavourite(Landroid/view/View;Luk/co/alt236/easycursor/EasyCursor;)V

    .line 145
    return-object p2
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string v0, "..."

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const-string p2, ""

    .line 171
    :cond_0
    invoke-static {p1, p2}, Lcom/eventgenie/android/ui/help/ExhibitorHelper;->mapListTextView(Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/SimpleCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 174
    :cond_1
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 98
    .local v0, "old":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;->mIndexer:Lcom/eventgenie/android/adapters/base/AtoZIndexer;

    invoke-virtual {v1, p1}, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->generateIndexes(Landroid/database/Cursor;)V

    .line 99
    return-object v0
.end method
