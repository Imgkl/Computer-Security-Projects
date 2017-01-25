.class public Lcom/eventgenie/android/utils/asynctasks/UdmNoteTask;
.super Landroid/os/AsyncTask;
.source "UdmNoteTask.java"


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
.field private final action:Lcom/genie_connect/android/db/access/Udm$NoteAction;

.field private final content:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final entity:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/Udm$NoteAction;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Lcom/genie_connect/android/db/access/Udm$NoteAction;
    .param p3, "entity"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/eventgenie/android/utils/asynctasks/UdmNoteTask;->context:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/eventgenie/android/utils/asynctasks/UdmNoteTask;->action:Lcom/genie_connect/android/db/access/Udm$NoteAction;

    .line 49
    iput-object p3, p0, Lcom/eventgenie/android/utils/asynctasks/UdmNoteTask;->entity:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/eventgenie/android/utils/asynctasks/UdmNoteTask;->content:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "arg0"    # [Ljava/lang/Long;

    .prologue
    .line 56
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkSender;

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/UdmNoteTask;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/genie_connect/android/net/providers/NetworkSender;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "net":Lcom/genie_connect/android/net/providers/NetworkSender;
    array-length v7, p1

    .line 58
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 59
    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 60
    .local v2, "id":J
    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/UdmNoteTask;->entity:Ljava/lang/String;

    iget-object v4, p0, Lcom/eventgenie/android/utils/asynctasks/UdmNoteTask;->action:Lcom/genie_connect/android/db/access/Udm$NoteAction;

    iget-object v5, p0, Lcom/eventgenie/android/utils/asynctasks/UdmNoteTask;->content:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/genie_connect/android/net/providers/NetworkSender;->note(Ljava/lang/String;JLcom/genie_connect/android/db/access/Udm$NoteAction;Ljava/lang/String;Z)V

    .line 58
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 62
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
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/UdmNoteTask;->doInBackground([Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
