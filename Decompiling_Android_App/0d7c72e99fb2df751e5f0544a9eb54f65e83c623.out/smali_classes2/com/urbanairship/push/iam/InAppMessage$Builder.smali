.class public Lcom/urbanairship/push/iam/InAppMessage$Builder;
.super Ljava/lang/Object;
.source "InAppMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/iam/InAppMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alert:Ljava/lang/String;

.field private buttonActionValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private buttonGroupId:Ljava/lang/String;

.field private clickActionValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;"
        }
    .end annotation
.end field

.field private durationMilliseconds:Ljava/lang/Long;

.field private expiryMS:Ljava/lang/Long;

.field private extras:Lcom/urbanairship/json/JsonMap;

.field private id:Ljava/lang/String;

.field private position:I

.field private primaryColor:Ljava/lang/Integer;

.field private secondaryColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;

    .line 490
    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->position:I

    .line 498
    return-void
.end method

.method public constructor <init>(Lcom/urbanairship/push/iam/InAppMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;

    .line 490
    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->position:I

    .line 506
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$000(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->id:Ljava/lang/String;

    .line 507
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$800(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonGroupId:Ljava/lang/String;

    .line 508
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$100(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->alert:Ljava/lang/String;

    .line 509
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$200(Lcom/urbanairship/push/iam/InAppMessage;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->expiryMS:Ljava/lang/Long;

    .line 510
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$400(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->durationMilliseconds:Ljava/lang/Long;

    .line 511
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$300(Lcom/urbanairship/push/iam/InAppMessage;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->position:I

    .line 512
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$1000(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->clickActionValues:Ljava/util/Map;

    .line 513
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$900(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;

    .line 514
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$700(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->extras:Lcom/urbanairship/json/JsonMap;

    .line 515
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$500(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->primaryColor:Ljava/lang/Integer;

    .line 516
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage;->access$600(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->secondaryColor:Ljava/lang/Integer;

    .line 517
    return-void
.end method


# virtual methods
.method public create()Lcom/urbanairship/push/iam/InAppMessage;
    .locals 6

    .prologue
    .line 670
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessage;

    invoke-direct {v0}, Lcom/urbanairship/push/iam/InAppMessage;-><init>()V

    .line 672
    .local v0, "message":Lcom/urbanairship/push/iam/InAppMessage;
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->expiryMS:Ljava/lang/Long;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x9a7ec800L

    add-long/2addr v2, v4

    :goto_0
    invoke-static {v0, v2, v3}, Lcom/urbanairship/push/iam/InAppMessage;->access$202(Lcom/urbanairship/push/iam/InAppMessage;J)J

    .line 673
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/urbanairship/push/iam/InAppMessage;->access$002(Lcom/urbanairship/push/iam/InAppMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 674
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->extras:Lcom/urbanairship/json/JsonMap;

    if-nez v1, :cond_1

    new-instance v1, Lcom/urbanairship/json/JsonMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/urbanairship/json/JsonMap;-><init>(Ljava/util/Map;)V

    :goto_1
    invoke-static {v0, v1}, Lcom/urbanairship/push/iam/InAppMessage;->access$702(Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/json/JsonMap;)Lcom/urbanairship/json/JsonMap;

    .line 675
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->alert:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/urbanairship/push/iam/InAppMessage;->access$102(Lcom/urbanairship/push/iam/InAppMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 676
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->durationMilliseconds:Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/urbanairship/push/iam/InAppMessage;->access$402(Lcom/urbanairship/push/iam/InAppMessage;Ljava/lang/Long;)Ljava/lang/Long;

    .line 677
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonGroupId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/urbanairship/push/iam/InAppMessage;->access$802(Lcom/urbanairship/push/iam/InAppMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 678
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_2
    invoke-static {v0, v1}, Lcom/urbanairship/push/iam/InAppMessage;->access$902(Lcom/urbanairship/push/iam/InAppMessage;Ljava/util/Map;)Ljava/util/Map;

    .line 679
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->clickActionValues:Ljava/util/Map;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_3
    invoke-static {v0, v1}, Lcom/urbanairship/push/iam/InAppMessage;->access$1002(Lcom/urbanairship/push/iam/InAppMessage;Ljava/util/Map;)Ljava/util/Map;

    .line 680
    iget v1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->position:I

    invoke-static {v0, v1}, Lcom/urbanairship/push/iam/InAppMessage;->access$302(Lcom/urbanairship/push/iam/InAppMessage;I)I

    .line 681
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->primaryColor:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/urbanairship/push/iam/InAppMessage;->access$502(Lcom/urbanairship/push/iam/InAppMessage;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 682
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->secondaryColor:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/urbanairship/push/iam/InAppMessage;->access$602(Lcom/urbanairship/push/iam/InAppMessage;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 684
    return-object v0

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->expiryMS:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 674
    :cond_1
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->extras:Lcom/urbanairship/json/JsonMap;

    goto :goto_1

    .line 678
    :cond_2
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;

    goto :goto_2

    .line 679
    :cond_3
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->clickActionValues:Ljava/util/Map;

    goto :goto_3
.end method

.method public setAlert(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 0
    .param p1, "alert"    # Ljava/lang/String;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->alert:Ljava/lang/String;

    .line 606
    return-object p0
.end method

.method public setButtonActionValues(Ljava/lang/String;Ljava/util/Map;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 2
    .param p1, "buttonId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;)",
            "Lcom/urbanairship/push/iam/InAppMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 579
    .local p2, "actionValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    if-nez p2, :cond_0

    .line 580
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :goto_0
    return-object p0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setButtonGroupId(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 0
    .param p1, "buttonGroupId"    # Ljava/lang/String;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonGroupId:Ljava/lang/String;

    .line 595
    return-object p0
.end method

.method public setClickActionValues(Ljava/util/Map;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;)",
            "Lcom/urbanairship/push/iam/InAppMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 562
    .local p1, "actionValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    if-nez p1, :cond_0

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->clickActionValues:Ljava/util/Map;

    .line 568
    :goto_0
    return-object p0

    .line 565
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->clickActionValues:Ljava/util/Map;

    goto :goto_0
.end method

.method public setDuration(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 4
    .param p1, "milliseconds"    # Ljava/lang/Long;

    .prologue
    .line 617
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 618
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duration must be greater than 0 milliseconds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_0
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->durationMilliseconds:Ljava/lang/Long;

    .line 622
    return-object p0
.end method

.method public setExpiry(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 0
    .param p1, "milliseconds"    # Ljava/lang/Long;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->expiryMS:Ljava/lang/Long;

    .line 540
    return-object p0
.end method

.method public setExtras(Lcom/urbanairship/json/JsonMap;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 0
    .param p1, "extras"    # Lcom/urbanairship/json/JsonMap;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->extras:Lcom/urbanairship/json/JsonMap;

    .line 552
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->id:Ljava/lang/String;

    .line 528
    return-object p0
.end method

.method public setPosition(I)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 634
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position must be either InAppMessage.POSITION_BOTTOM or InAppMessage.POSITION_TOP."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_0
    iput p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->position:I

    .line 639
    return-object p0
.end method

.method public setPrimaryColor(Ljava/lang/Integer;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->primaryColor:Ljava/lang/Integer;

    .line 650
    return-object p0
.end method

.method public setSecondaryColor(Ljava/lang/Integer;)Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage$Builder;->secondaryColor:Ljava/lang/Integer;

    .line 661
    return-object p0
.end method
