.class Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$5;
.super Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;
.source "SessionDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->createSpeakerLoader(Lcom/genie_connect/common/db/model/Speaker$SpeakerType;)Landroid/support/v4/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;

.field final synthetic val$speakerType:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;Landroid/content/Context;Lcom/genie_connect/common/db/model/Speaker$SpeakerType;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$5;->this$0:Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;

    iput-object p3, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$5;->val$speakerType:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    invoke-direct {p0, p2}, Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected buildCursor()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 485
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$5;->this$0:Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSpeakersDb()Lcom/genie_connect/android/db/access/DbSpeakers;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$5;->this$0:Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getEntityId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$5;->val$speakerType:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    invoke-virtual {v0, v2, v3, v1}, Lcom/genie_connect/android/db/access/DbSpeakers;->getSpeakersForSession(JLcom/genie_connect/common/db/model/Speaker$SpeakerType;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method
