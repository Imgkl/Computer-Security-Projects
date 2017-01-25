.class public final Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
.super Ljava/lang/Object;
.source "GenieIntentResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;
    }
.end annotation


# instance fields
.field private final mGenieIntent:Lcom/eventgenie/android/utils/genieintent/GenieIntent;

.field private final mMessage:Ljava/lang/String;

.field private final mNavigationResult:Lcom/eventgenie/android/utils/intents/NavigationIntent;

.field private final mStatus:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;)V
    .locals 1
    .param p1, "genieIntent"    # Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    .param p2, "status"    # Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;-><init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;Lcom/eventgenie/android/utils/intents/NavigationIntent;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V
    .locals 1
    .param p1, "genieIntent"    # Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    .param p2, "status"    # Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;
    .param p3, "androidIntent"    # Lcom/eventgenie/android/utils/intents/NavigationIntent;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;-><init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;Lcom/eventgenie/android/utils/intents/NavigationIntent;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;Lcom/eventgenie/android/utils/intents/NavigationIntent;Ljava/lang/String;)V
    .locals 2
    .param p1, "genieIntent"    # Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    .param p2, "status"    # Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;
    .param p3, "androidIntent"    # Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p3, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->mNavigationResult:Lcom/eventgenie/android/utils/intents/NavigationIntent;

    .line 51
    iput-object p2, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->mStatus:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    .line 52
    iput-object p4, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->mMessage:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->mGenieIntent:Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    .line 55
    iget-object v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->mStatus:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    sget-object v1, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->ACCEPTED:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    if-eq v0, v1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ GENIEINTENT: Not accepted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "genieIntent"    # Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    .param p2, "status"    # Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;-><init>(Lcom/eventgenie/android/utils/genieintent/GenieIntent;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;Lcom/eventgenie/android/utils/intents/NavigationIntent;Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getGenieIntent()Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->mGenieIntent:Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigationResult()Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->mNavigationResult:Lcom/eventgenie/android/utils/intents/NavigationIntent;

    return-object v0
.end method

.method public getStatus()Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->mStatus:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GenieIntentResult [mGenieIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->mGenieIntent:Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->mStatus:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAndroidIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->mNavigationResult:Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
