.class Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity$1;
.super Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;
.source "SpeakerDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getData(Ljava/lang/Class;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;

    invoke-direct {p0, p2}, Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected buildCursor()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 267
    iget-object v0, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;

    const-class v1, Lcom/genie_connect/android/repository/SessionRepository;

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/SessionRepository;

    iget-object v1, p0, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/speakers/SpeakerDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/genie_connect/android/repository/SessionRepository;->getSessionsForSpeaker(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method
