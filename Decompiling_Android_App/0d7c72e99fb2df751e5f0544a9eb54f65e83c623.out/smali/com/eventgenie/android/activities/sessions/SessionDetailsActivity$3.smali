.class Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$3;
.super Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;
.source "SessionDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getData(Ljava/lang/Class;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$3;->this$0:Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;

    invoke-direct {p0, p2}, Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected buildCursor()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 454
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$3;->this$0:Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSpeakersDb()Lcom/genie_connect/android/db/access/DbSpeakers;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$3;->this$0:Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mLeadChairId:J
    invoke-static {v1}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->access$100(Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/genie_connect/android/db/access/DbSpeakers;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method
