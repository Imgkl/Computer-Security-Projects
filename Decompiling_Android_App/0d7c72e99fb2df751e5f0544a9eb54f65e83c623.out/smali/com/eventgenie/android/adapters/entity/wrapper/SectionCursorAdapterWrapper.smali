.class public Lcom/eventgenie/android/adapters/entity/wrapper/SectionCursorAdapterWrapper;
.super Ljava/lang/Object;
.source "SectionCursorAdapterWrapper.java"

# interfaces
.implements Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;


# instance fields
.field private mAdapter:Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;


# direct methods
.method public constructor <init>(Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/eventgenie/android/adapters/entity/wrapper/SectionCursorAdapterWrapper;->mAdapter:Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;

    .line 50
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/wrapper/SectionCursorAdapterWrapper;->mAdapter:Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;

    invoke-virtual {v0, p1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 60
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/wrapper/SectionCursorAdapterWrapper;->mAdapter:Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;

    return-object v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/wrapper/SectionCursorAdapterWrapper;->mAdapter:Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;

    invoke-virtual {v0}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public swapCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/wrapper/SectionCursorAdapterWrapper;->mAdapter:Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;

    invoke-virtual {v0, p1}, Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 55
    return-void
.end method
