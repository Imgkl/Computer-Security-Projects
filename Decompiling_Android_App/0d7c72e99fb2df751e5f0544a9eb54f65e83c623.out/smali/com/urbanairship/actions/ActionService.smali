.class public Lcom/urbanairship/actions/ActionService;
.super Landroid/app/Service;
.source "ActionService.java"


# static fields
.field public static final ACTION_RUN_ACTIONS:Ljava/lang/String; = "com.urbanairship.actionservice.ACTION_RUN_ACTIONS"

.field public static final EXTRA_ACTIONS_PAYLOAD:Ljava/lang/String; = "com.urbanairship.actionservice.EXTRA_ACTIONS_PAYLOAD"

.field public static final EXTRA_PUSH_BUNDLE:Ljava/lang/String; = "com.urbanairship.actionservice.EXTRA_PUSH_BUNDLE"

.field public static final EXTRA_SITUATION:Ljava/lang/String; = "com.urbanairship.actionservice.EXTRA_SITUATION"


# instance fields
.field private actionRunRequestFactory:Lcom/urbanairship/actions/ActionRunRequestFactory;

.field private lastStartId:I

.field private runningActions:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/urbanairship/actions/ActionRunRequestFactory;

    invoke-direct {v0}, Lcom/urbanairship/actions/ActionRunRequestFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/urbanairship/actions/ActionService;-><init>(Lcom/urbanairship/actions/ActionRunRequestFactory;)V

    .line 93
    return-void
.end method

.method constructor <init>(Lcom/urbanairship/actions/ActionRunRequestFactory;)V
    .locals 1
    .param p1, "actionRunRequestFactory"    # Lcom/urbanairship/actions/ActionRunRequestFactory;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    iput v0, p0, Lcom/urbanairship/actions/ActionService;->lastStartId:I

    .line 75
    iput v0, p0, Lcom/urbanairship/actions/ActionService;->runningActions:I

    .line 85
    iput-object p1, p0, Lcom/urbanairship/actions/ActionService;->actionRunRequestFactory:Lcom/urbanairship/actions/ActionRunRequestFactory;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/actions/ActionService;)I
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/actions/ActionService;

    .prologue
    .line 49
    iget v0, p0, Lcom/urbanairship/actions/ActionService;->runningActions:I

    return v0
.end method

.method static synthetic access$010(Lcom/urbanairship/actions/ActionService;)I
    .locals 2
    .param p0, "x0"    # Lcom/urbanairship/actions/ActionService;

    .prologue
    .line 49
    iget v0, p0, Lcom/urbanairship/actions/ActionService;->runningActions:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/urbanairship/actions/ActionService;->runningActions:I

    return v0
.end method

.method static synthetic access$100(Lcom/urbanairship/actions/ActionService;)I
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/actions/ActionService;

    .prologue
    .line 49
    iget v0, p0, Lcom/urbanairship/actions/ActionService;->lastStartId:I

    return v0
.end method

.method private runActions(Ljava/lang/String;Lcom/urbanairship/actions/Situation;Lcom/urbanairship/push/PushMessage;)V
    .locals 8
    .param p1, "actionsPayload"    # Ljava/lang/String;
    .param p2, "situation"    # Lcom/urbanairship/actions/Situation;
    .param p3, "message"    # Lcom/urbanairship/push/PushMessage;

    .prologue
    .line 167
    if-nez p2, :cond_1

    .line 168
    const-string v6, "ActionService - Unable to run actions with a null situation"

    invoke-static {v6}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-static {p1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 173
    const-string v6, "ActionService - No actions to run."

    invoke-static {v6}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .local v1, "actionsJSON":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 186
    .local v5, "metadata":Landroid/os/Bundle;
    if-eqz p3, :cond_3

    .line 187
    new-instance v5, Landroid/os/Bundle;

    .end local v5    # "metadata":Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 188
    .restart local v5    # "metadata":Landroid/os/Bundle;
    const-string v6, "com.urbanairship.PUSH_MESSAGE"

    invoke-virtual {v5, v6, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 191
    :cond_3
    invoke-static {v1}, Lcom/urbanairship/util/JSONUtils;->convertToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 193
    .local v2, "actionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    .local v0, "actionName":Ljava/lang/String;
    iget v6, p0, Lcom/urbanairship/actions/ActionService;->runningActions:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/urbanairship/actions/ActionService;->runningActions:I

    .line 200
    iget-object v6, p0, Lcom/urbanairship/actions/ActionService;->actionRunRequestFactory:Lcom/urbanairship/actions/ActionRunRequestFactory;

    invoke-virtual {v6, v0}, Lcom/urbanairship/actions/ActionRunRequestFactory;->createActionRequest(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/urbanairship/actions/ActionRunRequest;->setMetadata(Landroid/os/Bundle;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v6

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/urbanairship/actions/ActionRunRequest;->setValue(Ljava/lang/Object;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/urbanairship/actions/ActionRunRequest;->setSituation(Lcom/urbanairship/actions/Situation;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v6

    new-instance v7, Lcom/urbanairship/actions/ActionService$1;

    invoke-direct {v7, p0}, Lcom/urbanairship/actions/ActionService$1;-><init>(Lcom/urbanairship/actions/ActionService;)V

    invoke-virtual {v6, v7}, Lcom/urbanairship/actions/ActionRunRequest;->run(Lcom/urbanairship/actions/ActionCompletionCallback;)V

    goto :goto_1

    .line 180
    .end local v0    # "actionName":Ljava/lang/String;
    .end local v1    # "actionsJSON":Lorg/json/JSONObject;
    .end local v2    # "actionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "metadata":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 181
    .local v3, "e":Lorg/json/JSONException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ActionService - Invalid actions payload: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static runActionsPayload(Landroid/content/Context;Ljava/lang/String;Lcom/urbanairship/actions/Situation;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "payload"    # Ljava/lang/String;
    .param p2, "situation"    # Lcom/urbanairship/actions/Situation;

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/urbanairship/actions/ActionService;->runActionsPayload(Landroid/content/Context;Ljava/lang/String;Lcom/urbanairship/actions/Situation;Lcom/urbanairship/push/PushMessage;)V

    .line 164
    return-void
.end method

.method public static runActionsPayload(Landroid/content/Context;Ljava/lang/String;Lcom/urbanairship/actions/Situation;Lcom/urbanairship/push/PushMessage;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "payload"    # Ljava/lang/String;
    .param p2, "situation"    # Lcom/urbanairship/actions/Situation;
    .param p3, "message"    # Lcom/urbanairship/push/PushMessage;

    .prologue
    .line 139
    invoke-static {p1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.urbanairship.actionservice.ACTION_RUN_ACTIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/urbanairship/actions/ActionService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.urbanairship.actionservice.EXTRA_ACTIONS_PAYLOAD"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.urbanairship.actionservice.EXTRA_SITUATION"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 148
    .local v0, "i":Landroid/content/Intent;
    if-eqz p3, :cond_1

    .line 149
    const-string v1, "com.urbanairship.actionservice.EXTRA_PUSH_BUNDLE"

    invoke-virtual {p3}, Lcom/urbanairship/push/PushMessage;->getPushBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 152
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 98
    invoke-virtual {p0}, Lcom/urbanairship/actions/ActionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/urbanairship/actions/ActionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Application;

    invoke-static {v4}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/app/Application;)V

    .line 105
    iput p3, p0, Lcom/urbanairship/actions/ActionService;->lastStartId:I

    .line 107
    if-eqz p1, :cond_0

    const-string v4, "com.urbanairship.actionservice.ACTION_RUN_ACTIONS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActionService - Received intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 111
    const-string v4, "com.urbanairship.actionservice.EXTRA_ACTIONS_PAYLOAD"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "actions":Ljava/lang/String;
    const-string v4, "com.urbanairship.actionservice.EXTRA_SITUATION"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/urbanairship/actions/Situation;

    .line 113
    .local v3, "situation":Lcom/urbanairship/actions/Situation;
    const-string v4, "com.urbanairship.actionservice.EXTRA_PUSH_BUNDLE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 114
    .local v2, "pushBundle":Landroid/os/Bundle;
    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 116
    .local v1, "message":Lcom/urbanairship/push/PushMessage;
    :goto_0
    invoke-direct {p0, v0, v3, v1}, Lcom/urbanairship/actions/ActionService;->runActions(Ljava/lang/String;Lcom/urbanairship/actions/Situation;Lcom/urbanairship/push/PushMessage;)V

    .line 119
    .end local v0    # "actions":Ljava/lang/String;
    .end local v1    # "message":Lcom/urbanairship/push/PushMessage;
    .end local v2    # "pushBundle":Landroid/os/Bundle;
    .end local v3    # "situation":Lcom/urbanairship/actions/Situation;
    :cond_0
    iget v4, p0, Lcom/urbanairship/actions/ActionService;->runningActions:I

    if-nez v4, :cond_1

    .line 120
    invoke-virtual {p0, p3}, Lcom/urbanairship/actions/ActionService;->stopSelf(I)V

    .line 123
    :cond_1
    const/4 v4, 0x2

    return v4

    .line 114
    .restart local v0    # "actions":Ljava/lang/String;
    .restart local v2    # "pushBundle":Landroid/os/Bundle;
    .restart local v3    # "situation":Lcom/urbanairship/actions/Situation;
    :cond_2
    new-instance v1, Lcom/urbanairship/push/PushMessage;

    invoke-direct {v1, v2}, Lcom/urbanairship/push/PushMessage;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method
