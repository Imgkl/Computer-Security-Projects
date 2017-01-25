.class public Lcom/eventgenie/android/fragments/TaskFragment;
.super Landroid/app/Fragment;
.source "TaskFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/fragments/TaskFragment$FragmentAsyncTask;,
        Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/Fragment;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "^ TaskFragment"


# instance fields
.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mTaskCallBacks:Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks",
            "<TX;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    .local p0, "this":Lcom/eventgenie/android/fragments/TaskFragment;, "Lcom/eventgenie/android/fragments/TaskFragment<TX;TT;>;"
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/fragments/TaskFragment;)Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/TaskFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/eventgenie/android/fragments/TaskFragment;->mTaskCallBacks:Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;

    return-object v0
.end method

.method static synthetic access$102(Lcom/eventgenie/android/fragments/TaskFragment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/TaskFragment;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/eventgenie/android/fragments/TaskFragment;->mResult:Ljava/lang/Object;

    return-object p1
.end method

.method public static varargs toList([Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "arr":[Ljava/lang/Object;, "[TT;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "elt":Ljava/lang/Object;, "TT;"
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "elt":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v4
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/eventgenie/android/fragments/TaskFragment;, "Lcom/eventgenie/android/fragments/TaskFragment<TX;TT;>;"
    iget-object v0, p0, Lcom/eventgenie/android/fragments/TaskFragment;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    .local p0, "this":Lcom/eventgenie/android/fragments/TaskFragment;, "Lcom/eventgenie/android/fragments/TaskFragment<TX;TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 54
    const-string v0, "^ TaskFragment onAttach()"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 56
    check-cast p1, Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/eventgenie/android/fragments/TaskFragment;->mTaskCallBacks:Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;

    .line 57
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .local p0, "this":Lcom/eventgenie/android/fragments/TaskFragment;, "Lcom/eventgenie/android/fragments/TaskFragment<TX;TT;>;"
    const/4 v1, 0x1

    .line 61
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const-string v0, "^ TaskFragment onCreate()"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/fragments/TaskFragment;->setRetainInstance(Z)V

    .line 68
    new-instance v0, Lcom/eventgenie/android/fragments/TaskFragment$FragmentAsyncTask;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/fragments/TaskFragment$FragmentAsyncTask;-><init>(Lcom/eventgenie/android/fragments/TaskFragment;)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/eventgenie/android/fragments/TaskFragment;->mTaskCallBacks:Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;

    invoke-interface {v3}, Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;->getParams()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lcom/eventgenie/android/fragments/TaskFragment;, "Lcom/eventgenie/android/fragments/TaskFragment<TX;TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 75
    const-string v0, "^ TaskFragment onDetach()"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/TaskFragment;->mTaskCallBacks:Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;

    .line 77
    return-void
.end method
