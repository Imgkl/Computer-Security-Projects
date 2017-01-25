.class public abstract Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "SectionCursorAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field public static final NO_CURSOR_POSITION:I = -0x63

.field protected static final VIEW_TYPE_ITEM:I = 0x1

.field protected static final VIEW_TYPE_SECTION:I


# instance fields
.field private mFastScrollObjects:[Ljava/lang/Object;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field mSectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSections:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 25
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSections:Ljava/util/SortedMap;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSectionList:Ljava/util/ArrayList;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->init(Landroid/content/Context;Ljava/util/SortedMap;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "flags"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 25
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSections:Ljava/util/SortedMap;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSectionList:Ljava/util/ArrayList;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->init(Landroid/content/Context;Ljava/util/SortedMap;)V

    .line 34
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ZLjava/util/SortedMap;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "autoRequery"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Z",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p4, "sections":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 25
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSections:Ljava/util/SortedMap;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSectionList:Ljava/util/ArrayList;

    .line 38
    invoke-direct {p0, p1, p4}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->init(Landroid/content/Context;Ljava/util/SortedMap;)V

    .line 39
    return-void
.end method

.method private buildSections()V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->hasOpenCursor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 69
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 70
    invoke-virtual {p0, v0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->buildSections(Landroid/database/Cursor;)Ljava/util/SortedMap;

    move-result-object v1

    iput-object v1, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSections:Ljava/util/SortedMap;

    .line 71
    iget-object v1, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSections:Ljava/util/SortedMap;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSections:Ljava/util/SortedMap;

    .line 75
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method private getFastScrollDialogLabels()[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 424
    iget-object v4, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSections:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 425
    .local v3, "sectionsCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 426
    .local v2, "objects":[Ljava/lang/Object;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_1

    .line 427
    invoke-virtual {p0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getMaxIndexerLength()I

    move-result v1

    .line 428
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 429
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 430
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 428
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    .end local v0    # "i":I
    .end local v1    # "max":I
    :cond_1
    return-object v2
.end method

.method private init(Landroid/content/Context;Ljava/util/SortedMap;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "sections":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 49
    if-eqz p2, :cond_0

    .line 50
    iput-object p2, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSections:Ljava/util/SortedMap;

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->buildSections()V

    goto :goto_0
.end method

.method private isListPositionBeforeFirstSection(II)Z
    .locals 4
    .param p1, "listPosition"    # I
    .param p2, "sectionIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 241
    iget-object v1, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSections:Ljava/util/SortedMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSections:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v0, v2

    .line 242
    .local v0, "hasSections":Z
    :goto_0
    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSections:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge p1, v1, :cond_1

    move v1, v2

    :goto_1
    return v1

    .end local v0    # "hasSections":Z
    :cond_0
    move v0, v3

    .line 241
    goto :goto_0

    .restart local v0    # "hasSections":Z
    :cond_1
    move v1, v3

    .line 242
    goto :goto_1
.end method


# virtual methods
.method protected abstract bindItemView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method protected abstract bindSectionView(Landroid/view/View;Landroid/content/Context;ILjava/lang/Object;)V
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This method is not used by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected buildSections(Landroid/database/Cursor;)Ljava/util/SortedMap;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 84
    .local v2, "sections":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 85
    .local v0, "cursorPosition":I
    :goto_0
    invoke-virtual {p0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->hasOpenCursor()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    invoke-virtual {p0, p1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getSectionFromCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    .line 87
    .local v1, "section":Ljava/lang/Object;
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-eq v3, v0, :cond_0

    .line 88
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Do no move the cursor\'s position in getSectionFromCursor."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 92
    goto :goto_0

    .line 93
    .end local v1    # "section":Ljava/lang/Object;
    :cond_2
    return-object v2
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 308
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSections:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCursorPositionWithoutSections(I)I
    .locals 2
    .param p1, "listPosition"    # I

    .prologue
    .line 206
    iget-object v1, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSections:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 216
    .end local p1    # "listPosition":I
    :cond_0
    :goto_0
    return p1

    .line 208
    .restart local p1    # "listPosition":I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->isSection(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 209
    invoke-virtual {p0, p1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getIndexWithinSections(I)I

    move-result v0

    .line 210
    .local v0, "sectionIndex":I
    invoke-direct {p0, p1, v0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->isListPositionBeforeFirstSection(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    add-int/lit8 v1, v0, 0x1

    sub-int/2addr p1, v1

    goto :goto_0

    .line 216
    .end local v0    # "sectionIndex":I
    :cond_2
    const/16 p1, -0x63

    goto :goto_0
.end method

.method public getIndexWithinSections(I)I
    .locals 6
    .param p1, "listPosition"    # I

    .prologue
    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, "isSection":Z
    const/4 v2, 0x0

    .line 229
    .local v2, "numPrecedingSections":I
    iget-object v4, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSections:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 230
    .local v3, "sectionPosition":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le p1, v4, :cond_0

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p1, v4, :cond_1

    .line 233
    const/4 v1, 0x1

    goto :goto_0

    .line 237
    .end local v3    # "sectionPosition":Ljava/lang/Integer;
    :cond_1
    if-eqz v1, :cond_2

    .end local v2    # "numPrecedingSections":I
    :goto_1
    return v2

    .restart local v2    # "numPrecedingSections":I
    :cond_2
    add-int/lit8 v4, v2, -0x1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "listPosition"    # I

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->isSection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSections:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getCursorPositionWithoutSections(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "listPosition"    # I

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->isSection(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    int-to-long v2, p1

    .line 299
    :goto_0
    return-wide v2

    .line 294
    :cond_0
    invoke-virtual {p0, p1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getCursorPositionWithoutSections(I)I

    move-result v1

    .line 295
    .local v1, "cursorPosition":I
    invoke-virtual {p0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 296
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->hasOpenCursor()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0

    .line 299
    :cond_1
    const-wide/16 v2, -0x63

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "listPosition"    # I

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->isSection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method protected getMaxIndexerLength()I
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x3

    return v0
.end method

.method public getPositionForSection(I)I
    .locals 3
    .param p1, "sectionIndex"    # I

    .prologue
    .line 359
    iget-object v2, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSectionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSections:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 361
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSectionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSectionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSectionList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getCount()I

    move-result v2

    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 386
    .local v0, "objects":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getIndexWithinSections(I)I

    move-result v1

    .line 388
    .local v1, "sectionIndex":I
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .end local v1    # "sectionIndex":I
    :goto_0
    return v1

    .restart local v1    # "sectionIndex":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract getSectionFromCursor(Landroid/database/Cursor;)Ljava/lang/Object;
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mFastScrollObjects:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 405
    invoke-direct {p0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getFastScrollDialogLabels()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mFastScrollObjects:[Ljava/lang/Object;

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mFastScrollObjects:[Ljava/lang/Object;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->isSection(I)Z

    move-result v2

    .line 107
    .local v2, "isSection":Z
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 111
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_1

    .line 112
    invoke-virtual {p0, p1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getCursorPositionWithoutSections(I)I

    move-result v3

    .line 113
    .local v3, "newPosition":I
    invoke-virtual {p0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->hasOpenCursor()Z

    move-result v5

    if-nez v5, :cond_0

    .line 115
    new-instance v4, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 134
    .end local v3    # "newPosition":I
    :goto_0
    return-object v4

    .line 116
    .restart local v3    # "newPosition":I
    :cond_0
    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 117
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t move cursor to position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 121
    .end local v3    # "newPosition":I
    :cond_1
    if-nez p2, :cond_3

    .line 122
    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v0, v5, p3}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->newSectionView(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 128
    .local v4, "view":Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_4

    .line 129
    invoke-virtual {p0, p1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v0, p1, v5}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->bindSectionView(Landroid/view/View;Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    .line 122
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v0, v1, p3}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->newItemView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 125
    :cond_3
    move-object v4, p2

    .restart local v4    # "view":Landroid/view/View;
    goto :goto_1

    .line 131
    :cond_4
    invoke-virtual {p0, v4, v0, v1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->bindItemView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x2

    return v0
.end method

.method protected hasOpenCursor()Z
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 334
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 336
    const/4 v1, 0x0

    .line 338
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSection(I)Z
    .locals 2
    .param p1, "listPosition"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSections:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract newItemView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract newSectionView(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This method is not used by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->hasOpenCursor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->buildSections()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mFastScrollObjects:[Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSectionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 255
    :cond_0
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 256
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->hasOpenCursor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->buildSections()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mFastScrollObjects:[Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->mSectionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 268
    :cond_0
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 269
    return-void
.end method
