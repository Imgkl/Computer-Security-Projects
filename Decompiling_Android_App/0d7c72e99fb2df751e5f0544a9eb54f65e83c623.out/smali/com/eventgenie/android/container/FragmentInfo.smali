.class public final Lcom/eventgenie/android/container/FragmentInfo;
.super Ljava/lang/Object;
.source "FragmentInfo.java"


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final frag:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "_frag"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/eventgenie/android/container/FragmentInfo;->clss:Ljava/lang/Class;

    .line 51
    iput-object v0, p0, Lcom/eventgenie/android/container/FragmentInfo;->args:Landroid/os/Bundle;

    .line 52
    iput-object p1, p0, Lcom/eventgenie/android/container/FragmentInfo;->frag:Landroid/support/v4/app/Fragment;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .param p2, "_args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/eventgenie/android/container/FragmentInfo;->clss:Ljava/lang/Class;

    .line 45
    iput-object p2, p0, Lcom/eventgenie/android/container/FragmentInfo;->args:Landroid/os/Bundle;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/container/FragmentInfo;->frag:Landroid/support/v4/app/Fragment;

    .line 47
    return-void
.end method


# virtual methods
.method public getArgs()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/eventgenie/android/container/FragmentInfo;->args:Landroid/os/Bundle;

    return-object v0
.end method

.method public getClss()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/eventgenie/android/container/FragmentInfo;->clss:Ljava/lang/Class;

    return-object v0
.end method

.method public getFrag()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/eventgenie/android/container/FragmentInfo;->frag:Landroid/support/v4/app/Fragment;

    return-object v0
.end method
