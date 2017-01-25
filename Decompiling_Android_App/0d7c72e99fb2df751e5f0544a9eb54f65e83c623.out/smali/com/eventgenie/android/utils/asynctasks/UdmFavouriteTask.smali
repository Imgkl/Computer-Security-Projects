.class public Lcom/eventgenie/android/utils/asynctasks/UdmFavouriteTask;
.super Landroid/os/AsyncTask;
.source "UdmFavouriteTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private action:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

.field private context:Landroid/content/Context;

.field private entity:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/Udm$FavouriteAction;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Lcom/genie_connect/android/db/access/Udm$FavouriteAction;
    .param p3, "entity"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/eventgenie/android/utils/asynctasks/UdmFavouriteTask;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/eventgenie/android/utils/asynctasks/UdmFavouriteTask;->action:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    .line 48
    iput-object p3, p0, Lcom/eventgenie/android/utils/asynctasks/UdmFavouriteTask;->entity:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "arg0"    # [Ljava/lang/Long;

    .prologue
    .line 53
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkSender;

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/UdmFavouriteTask;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/genie_connect/android/net/providers/NetworkSender;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, "net":Lcom/genie_connect/android/net/providers/NetworkSender;
    array-length v6, p1

    .line 56
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 57
    aget-object v1, p1, v7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 58
    .local v2, "id":J
    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/UdmFavouriteTask;->entity:Ljava/lang/String;

    iget-object v4, p0, Lcom/eventgenie/android/utils/asynctasks/UdmFavouriteTask;->action:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/genie_connect/android/net/providers/NetworkSender;->postFavourite(Ljava/lang/String;JLcom/genie_connect/android/db/access/Udm$FavouriteAction;Z)V

    .line 56
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 60
    .end local v2    # "id":J
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, [Ljava/lang/Long;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/UdmFavouriteTask;->doInBackground([Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
