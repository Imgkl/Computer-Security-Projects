.class public final Lcom/urbanairship/actions/ActionArguments;
.super Ljava/lang/Object;
.source "ActionArguments.java"


# static fields
.field public static final PUSH_MESSAGE_METADATA:Ljava/lang/String; = "com.urbanairship.PUSH_MESSAGE"

.field public static final REGISTRY_ACTION_NAME_METADATA:Ljava/lang/String; = "com.urbanairship.REGISTRY_ACTION_NAME"

.field public static final RICH_PUSH_ID_METADATA:Ljava/lang/String; = "com.urbanairship.RICH_PUSH_ID_METADATA"


# instance fields
.field private final metadata:Landroid/os/Bundle;

.field private final situation:Lcom/urbanairship/actions/Situation;

.field private final value:Lcom/urbanairship/actions/ActionValue;


# direct methods
.method public constructor <init>(Lcom/urbanairship/actions/Situation;Lcom/urbanairship/actions/ActionValue;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "situation"    # Lcom/urbanairship/actions/Situation;
    .param p2, "value"    # Lcom/urbanairship/actions/ActionValue;
    .param p3, "metadata"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-nez p1, :cond_0

    sget-object p1, Lcom/urbanairship/actions/Situation;->MANUAL_INVOCATION:Lcom/urbanairship/actions/Situation;

    .end local p1    # "situation":Lcom/urbanairship/actions/Situation;
    :cond_0
    iput-object p1, p0, Lcom/urbanairship/actions/ActionArguments;->situation:Lcom/urbanairship/actions/Situation;

    .line 66
    if-nez p2, :cond_1

    new-instance p2, Lcom/urbanairship/actions/ActionValue;

    .end local p2    # "value":Lcom/urbanairship/actions/ActionValue;
    invoke-direct {p2}, Lcom/urbanairship/actions/ActionValue;-><init>()V

    :cond_1
    iput-object p2, p0, Lcom/urbanairship/actions/ActionArguments;->value:Lcom/urbanairship/actions/ActionValue;

    .line 67
    if-nez p3, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/urbanairship/actions/ActionArguments;->metadata:Landroid/os/Bundle;

    .line 68
    return-void

    .line 67
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public getMetadata()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/urbanairship/actions/ActionArguments;->metadata:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSituation()Lcom/urbanairship/actions/Situation;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/urbanairship/actions/ActionArguments;->situation:Lcom/urbanairship/actions/Situation;

    return-object v0
.end method

.method public getValue()Lcom/urbanairship/actions/ActionValue;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/urbanairship/actions/ActionArguments;->value:Lcom/urbanairship/actions/ActionValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionArguments { situation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/actions/ActionArguments;->situation:Lcom/urbanairship/actions/Situation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/actions/ActionArguments;->value:Lcom/urbanairship/actions/ActionValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/actions/ActionArguments;->metadata:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
