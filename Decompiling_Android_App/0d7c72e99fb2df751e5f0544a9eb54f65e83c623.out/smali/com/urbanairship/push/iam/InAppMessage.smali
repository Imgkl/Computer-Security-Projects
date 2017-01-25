.class public Lcom/urbanairship/push/iam/InAppMessage;
.super Ljava/lang/Object;
.source "InAppMessage.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/urbanairship/json/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/iam/InAppMessage$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/urbanairship/push/iam/InAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_EXPIRY_MS:J = 0x9a7ec800L

.field public static final POSITION_BOTTOM:I = 0x0

.field public static final POSITION_TOP:I = 0x1


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

.field private expiryMS:J

.field private extras:Lcom/urbanairship/json/JsonMap;

.field private id:Ljava/lang/String;

.field private position:I

.field private primaryColor:Ljava/lang/Integer;

.field private secondaryColor:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessage$1;

    invoke-direct {v0}, Lcom/urbanairship/push/iam/InAppMessage$1;-><init>()V

    sput-object v0, Lcom/urbanairship/push/iam/InAppMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/urbanairship/push/iam/InAppMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/urbanairship/push/iam/InAppMessage;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$102(Lcom/urbanairship/push/iam/InAppMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/urbanairship/push/iam/InAppMessage;)J
    .locals 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/urbanairship/push/iam/InAppMessage;J)J
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/urbanairship/push/iam/InAppMessage;)I
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 50
    iget v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    return v0
.end method

.method static synthetic access$302(Lcom/urbanairship/push/iam/InAppMessage;I)I
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    return p1
.end method

.method static synthetic access$400(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$402(Lcom/urbanairship/push/iam/InAppMessage;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$500(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/urbanairship/push/iam/InAppMessage;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/urbanairship/push/iam/InAppMessage;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/json/JsonMap;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    return-object v0
.end method

.method static synthetic access$702(Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/json/JsonMap;)Lcom/urbanairship/json/JsonMap;
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;
    .param p1, "x1"    # Lcom/urbanairship/json/JsonMap;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/urbanairship/push/iam/InAppMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$902(Lcom/urbanairship/push/iam/InAppMessage;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    return-object p1
.end method

.method private static parseColor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p0, "colorString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 378
    invoke-static {p0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    :goto_0
    return-object v1

    .line 383
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InAppMessage - Unable to parse color: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static parseJson(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage;
    .locals 26
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-static/range {p0 .. p0}, Lcom/urbanairship/json/JsonValue;->parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v19

    .line 292
    .local v19, "inAppJson":Lcom/urbanairship/json/JsonMap;
    if-nez v19, :cond_0

    .line 293
    const/16 v20, 0x0

    .line 369
    :goto_0
    return-object v20

    .line 296
    :cond_0
    const-string v20, "display"

    invoke-virtual/range {v19 .. v20}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v13

    .line 297
    .local v13, "displayJson":Lcom/urbanairship/json/JsonMap;
    const-string v20, "actions"

    invoke-virtual/range {v19 .. v20}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v6

    .line 299
    .local v6, "actionsJson":Lcom/urbanairship/json/JsonMap;
    if-eqz v13, :cond_1

    const-string v20, "banner"

    const-string/jumbo v21, "type"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 300
    :cond_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "InAppMessage - Unable to parse json: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 301
    const/16 v20, 0x0

    goto :goto_0

    .line 304
    :cond_2
    new-instance v7, Lcom/urbanairship/push/iam/InAppMessage$Builder;

    invoke-direct {v7}, Lcom/urbanairship/push/iam/InAppMessage$Builder;-><init>()V

    .line 306
    .local v7, "builder":Lcom/urbanairship/push/iam/InAppMessage$Builder;
    const-string v20, "id"

    invoke-virtual/range {v19 .. v20}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setId(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    move-result-object v20

    const-string v21, "extra"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setExtras(Lcom/urbanairship/json/JsonMap;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    move-result-object v20

    const-string v21, "alert"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setAlert(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    move-result-object v20

    const-string v21, "primary_color"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/urbanairship/push/iam/InAppMessage;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setPrimaryColor(Ljava/lang/Integer;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    move-result-object v20

    const-string v21, "secondary_color"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/urbanairship/push/iam/InAppMessage;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setSecondaryColor(Ljava/lang/Integer;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .line 313
    const-string v20, "duration_ms"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/urbanairship/json/JsonMap;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 314
    const-string v20, "duration_ms"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/urbanairship/json/JsonMap;->get(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v20

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/json/JsonValue;->getLong(J)J

    move-result-wide v14

    .line 315
    .local v14, "duration":J
    const-wide/16 v20, 0x0

    cmp-long v20, v14, v20

    if-lez v20, :cond_3

    .line 316
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setDuration(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .line 325
    :cond_3
    :goto_1
    const-string v20, "expiry_ms"

    invoke-virtual/range {v19 .. v20}, Lcom/urbanairship/json/JsonMap;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 326
    const-string v20, "expiry_ms"

    invoke-virtual/range {v19 .. v20}, Lcom/urbanairship/json/JsonMap;->get(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const-wide v24, 0x9a7ec800L

    add-long v22, v22, v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/json/JsonValue;->getLong(J)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setExpiry(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .line 331
    :cond_4
    :goto_2
    const-string/jumbo v20, "top"

    const-string v21, "position"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 332
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setPosition(I)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .line 337
    :goto_3
    if-eqz v6, :cond_b

    .line 339
    const-string v20, "on_click"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v12

    .line 340
    .local v12, "clickActionsJson":Lcom/urbanairship/json/JsonMap;
    if-eqz v12, :cond_9

    .line 341
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 342
    .local v11, "clickActions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    invoke-virtual {v12}, Lcom/urbanairship/json/JsonMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 343
    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    new-instance v22, Lcom/urbanairship/actions/ActionValue;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/urbanairship/json/JsonValue;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 319
    .end local v11    # "clickActions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    .end local v12    # "clickActionsJson":Lcom/urbanairship/json/JsonMap;
    .end local v14    # "duration":J
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_5
    const-string v20, "duration"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v20

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/json/JsonValue;->getLong(J)J

    move-result-wide v14

    .line 320
    .restart local v14    # "duration":J
    const-wide/16 v20, 0x0

    cmp-long v20, v14, v20

    if-lez v20, :cond_3

    .line 321
    sget-object v20, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setDuration(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    goto/16 :goto_1

    .line 327
    :cond_6
    const-string v20, "expiry"

    invoke-virtual/range {v19 .. v20}, Lcom/urbanairship/json/JsonMap;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 328
    const-string v20, "expiry"

    invoke-virtual/range {v19 .. v20}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const-wide v24, 0x9a7ec800L

    add-long v22, v22, v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/urbanairship/util/DateUtils;->parseIso8601(Ljava/lang/String;J)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setExpiry(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    goto/16 :goto_2

    .line 334
    :cond_7
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setPosition(I)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    goto/16 :goto_3

    .line 345
    .restart local v11    # "clickActions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    .restart local v12    # "clickActionsJson":Lcom/urbanairship/json/JsonMap;
    .restart local v17    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-virtual {v7, v11}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setClickActionValues(Ljava/util/Map;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .line 349
    .end local v11    # "clickActions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_9
    const-string v20, "button_group"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setButtonGroupId(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .line 352
    const-string v20, "button_actions"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v8

    .line 353
    .local v8, "buttonActionsJson":Lcom/urbanairship/json/JsonMap;
    if-eqz v8, :cond_b

    .line 355
    invoke-virtual {v8}, Lcom/urbanairship/json/JsonMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 356
    .restart local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 357
    .local v10, "buttonId":Ljava/lang/String;
    invoke-virtual {v8, v10}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v4

    .line 359
    .local v4, "actionJson":Lcom/urbanairship/json/JsonMap;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 360
    .local v5, "actions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    invoke-virtual {v4}, Lcom/urbanairship/json/JsonMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 361
    .local v9, "buttonEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    new-instance v22, Lcom/urbanairship/actions/ActionValue;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/urbanairship/json/JsonValue;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 364
    .end local v9    # "buttonEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    :cond_a
    invoke-virtual {v7, v10, v5}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setButtonActionValues(Ljava/lang/String;Ljava/util/Map;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    goto :goto_5

    .line 369
    .end local v4    # "actionJson":Lcom/urbanairship/json/JsonMap;
    .end local v5    # "actions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    .end local v8    # "buttonActionsJson":Lcom/urbanairship/json/JsonMap;
    .end local v10    # "buttonId":Ljava/lang/String;
    .end local v12    # "clickActionsJson":Lcom/urbanairship/json/JsonMap;
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-virtual {v7}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->create()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v20

    goto/16 :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 431
    if-ne p0, p1, :cond_1

    .line 441
    :cond_0
    :goto_0
    return v1

    .line 435
    :cond_1
    instance-of v3, p1, Lcom/urbanairship/push/iam/InAppMessage;

    if-nez v3, :cond_2

    move v1, v2

    .line 436
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 439
    check-cast v0, Lcom/urbanairship/push/iam/InAppMessage;

    .line 441
    .local v0, "other":Lcom/urbanairship/push/iam/InAppMessage;
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    if-nez v3, :cond_3

    :goto_6
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_7
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_8
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_9
    iget v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    iget v4, v0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    if-ne v3, v4, :cond_3

    iget-wide v4, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    iget-wide v6, v0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    iget-object v4, v0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    iget-object v4, v0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    iget-object v4, v0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    invoke-virtual {v3, v4}, Lcom/urbanairship/json/JsonMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    iget-object v4, v0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    iget-object v4, v0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_7

    :cond_b
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_8

    :cond_c
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    iget-object v4, v0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_9
.end method

.method public getAlert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonActionValues(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "buttonId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getButtonGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getClickActionValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    return-object v0
.end method

.method public getExpiry()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    return-wide v0
.end method

.method public getExtras()Lcom/urbanairship/json/JsonMap;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    return v0
.end method

.method public getPrimaryColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSecondaryColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 457
    const/16 v0, 0xd

    .line 460
    .local v0, "result":I
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x193

    .line 461
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 462
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 463
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 464
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    add-int v0, v3, v1

    .line 465
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    if-nez v1, :cond_5

    move v1, v2

    :goto_5
    add-int v0, v3, v1

    .line 466
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    if-nez v1, :cond_6

    move v1, v2

    :goto_6
    add-int v0, v3, v1

    .line 467
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    if-nez v1, :cond_7

    move v1, v2

    :goto_7
    add-int v0, v3, v1

    .line 468
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    if-nez v3, :cond_8

    :goto_8
    add-int v0, v1, v2

    .line 469
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    add-int v0, v1, v2

    .line 470
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 472
    return v0

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 462
    :cond_2
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 463
    :cond_3
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonMap;->hashCode()I

    move-result v1

    goto :goto_3

    .line 464
    :cond_4
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    goto :goto_4

    .line 465
    :cond_5
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    goto :goto_5

    .line 466
    :cond_6
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_6

    .line 467
    :cond_7
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_7

    .line 468
    :cond_8
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_8
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toJsonValue()Lcom/urbanairship/json/JsonValue;
    .locals 11

    .prologue
    const v10, 0xffffff

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 393
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 394
    .local v2, "inApp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "id"

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string v3, "expiry_ms"

    iget-wide v4, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v3, "extra"

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 402
    .local v1, "display":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "display"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string/jumbo v3, "type"

    const-string v4, "banner"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string v3, "alert"

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string v4, "position"

    iget v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    if-ne v3, v8, :cond_3

    const-string/jumbo v3, "top"

    :goto_0
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 408
    const-string v3, "duration_ms"

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :cond_0
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 412
    const-string v3, "primary_color"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "#%06X"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :cond_1
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 416
    const-string v3, "secondary_color"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "#%06X"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 421
    .local v0, "actions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "actions"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const-string v3, "on_click"

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v3, "button_group"

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v3, "button_actions"

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    return-object v3

    .line 405
    .end local v0    # "actions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    const-string v3, "bottom"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 243
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 246
    iget v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 256
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 262
    :goto_1
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 263
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 269
    :goto_2
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonMap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 274
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 275
    return-void

    .line 251
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 252
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 259
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 265
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 266
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
