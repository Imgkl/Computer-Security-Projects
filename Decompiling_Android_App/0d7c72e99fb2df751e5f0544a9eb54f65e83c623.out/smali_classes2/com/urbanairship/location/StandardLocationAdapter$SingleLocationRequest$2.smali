.class Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$2;
.super Lcom/urbanairship/location/StandardLocationAdapter$AndroidLocationListener;
.source "StandardLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;-><init>(Lcom/urbanairship/location/StandardLocationAdapter;Lcom/urbanairship/location/LocationRequestOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;

.field final synthetic val$options:Lcom/urbanairship/location/LocationRequestOptions;

.field final synthetic val$this$0:Lcom/urbanairship/location/StandardLocationAdapter;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;Lcom/urbanairship/location/StandardLocationAdapter;Lcom/urbanairship/location/LocationRequestOptions;)V
    .locals 1

    .prologue
    .line 207
    iput-object p1, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$2;->this$1:Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;

    iput-object p2, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$2;->val$this$0:Lcom/urbanairship/location/StandardLocationAdapter;

    iput-object p3, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$2;->val$options:Lcom/urbanairship/location/LocationRequestOptions;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/urbanairship/location/StandardLocationAdapter$AndroidLocationListener;-><init>(Lcom/urbanairship/location/StandardLocationAdapter$1;)V

    return-void
.end method


# virtual methods
.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StandardLocationAdapter - Provider enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$2;->this$1:Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;

    invoke-virtual {v1}, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$2;->this$1:Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;

    iget-object v1, v1, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->this$0:Lcom/urbanairship/location/StandardLocationAdapter;

    iget-object v2, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$2;->this$1:Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;

    # getter for: Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->criteria:Landroid/location/Criteria;
    invoke-static {v2}, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->access$400(Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;)Landroid/location/Criteria;

    move-result-object v2

    iget-object v3, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$2;->val$options:Lcom/urbanairship/location/LocationRequestOptions;

    # invokes: Lcom/urbanairship/location/StandardLocationAdapter;->getBestProvider(Landroid/location/Criteria;Lcom/urbanairship/location/LocationRequestOptions;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/urbanairship/location/StandardLocationAdapter;->access$500(Lcom/urbanairship/location/StandardLocationAdapter;Landroid/location/Criteria;Lcom/urbanairship/location/LocationRequestOptions;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "bestProvider":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$2;->this$1:Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;

    # getter for: Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->currentProvider:Ljava/lang/String;
    invoke-static {v1}, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->access$600(Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest$2;->this$1:Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;

    # invokes: Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->listenForLocationChanges()V
    invoke-static {v1}, Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;->access$300(Lcom/urbanairship/location/StandardLocationAdapter$SingleLocationRequest;)V

    .line 218
    .end local v0    # "bestProvider":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
