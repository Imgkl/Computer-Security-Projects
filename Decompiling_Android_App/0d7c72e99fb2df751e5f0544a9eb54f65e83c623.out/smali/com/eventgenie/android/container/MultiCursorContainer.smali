.class public final Lcom/eventgenie/android/container/MultiCursorContainer;
.super Ljava/lang/Object;
.source "MultiCursorContainer.java"


# instance fields
.field private final mCursorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Luk/co/alt236/easycursor/EasyCursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/container/MultiCursorContainer;->mCursorList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/container/MultiCursorContainer;->mTitleList:Ljava/util/List;

    .line 48
    return-void
.end method


# virtual methods
.method public addCursor(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;)V
    .locals 1
    .param p1, "adapter"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/eventgenie/android/container/MultiCursorContainer;->mCursorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/eventgenie/android/container/MultiCursorContainer;->mTitleList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public closeCursors()V
    .locals 3

    .prologue
    .line 56
    iget-object v2, p0, Lcom/eventgenie/android/container/MultiCursorContainer;->mCursorList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/alt236/easycursor/EasyCursor;

    .line 57
    .local v0, "cursor":Luk/co/alt236/easycursor/EasyCursor;
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    goto :goto_0

    .line 59
    .end local v0    # "cursor":Luk/co/alt236/easycursor/EasyCursor;
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/eventgenie/android/container/MultiCursorContainer;->closeCursors()V

    .line 64
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/eventgenie/android/container/MultiCursorContainer;->mCursorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCursor(I)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/eventgenie/android/container/MultiCursorContainer;->mCursorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/alt236/easycursor/EasyCursor;

    return-object v0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/eventgenie/android/container/MultiCursorContainer;->mTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
