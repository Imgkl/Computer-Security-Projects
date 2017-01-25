.class public Lcom/eventgenie/android/adapters/entity/wrapper/SimpleCursorAdapterWrapper;
.super Ljava/lang/Object;
.source "SimpleCursorAdapterWrapper.java"

# interfaces
.implements Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;


# instance fields
.field private mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/SimpleCursorAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v4/widget/SimpleCursorAdapter;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/eventgenie/android/adapters/entity/wrapper/SimpleCursorAdapterWrapper;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 48
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/wrapper/SimpleCursorAdapterWrapper;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 58
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/wrapper/SimpleCursorAdapterWrapper;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/wrapper/SimpleCursorAdapterWrapper;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public swapCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/wrapper/SimpleCursorAdapterWrapper;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 53
    return-void
.end method
