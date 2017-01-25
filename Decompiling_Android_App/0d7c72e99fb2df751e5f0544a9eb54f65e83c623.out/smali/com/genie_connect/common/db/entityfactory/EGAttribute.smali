.class public Lcom/genie_connect/common/db/entityfactory/EGAttribute;
.super Ljava/lang/Object;
.source "EGAttribute.java"

# interfaces
.implements Lcom/genie_connect/common/db/DatabaseSymbolConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/entityfactory/EGAttribute$1;,
        Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;
    }
.end annotation


# static fields
.field private static final NULL:Ljava/lang/String; = "null"


# instance fields
.field protected final isKey:Z

.field protected final name:Ljava/lang/String;

.field protected final type:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;Z)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;
    .param p3, "isKey"    # Z

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->name:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->type:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    .line 55
    iput-boolean p3, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->isKey:Z

    .line 56
    return-void
.end method

.method private static putString(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/GenieContentValues;)V
    .locals 1
    .param p0, "fname"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "row"    # Lcom/genie_connect/common/db/entityfactory/GenieContentValues;

    .prologue
    .line 151
    if-eqz p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p2, p0, p1}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p2, p0}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->type:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    return-object v0
.end method

.method public getValue(Lcom/genie_connect/common/platform/json/IJsonObject;)Ljava/lang/Object;
    .locals 4
    .param p1, "jsonObject"    # Lcom/genie_connect/common/platform/json/IJsonObject;

    .prologue
    const/4 v1, 0x0

    .line 121
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$EGAttribute$Type:[I

    iget-object v3, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->type:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-virtual {v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    return-object v1

    .line 123
    :pswitch_0
    iget-object v1, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->name:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v2, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->name:Ljava/lang/String;

    invoke-interface {p1, v2}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/common/utils/string/CommonStringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-static {v0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertJsonStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0

    .line 133
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->name:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/genie_connect/common/platform/json/IJsonObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 135
    :pswitch_3
    iget-object v1, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->name:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/genie_connect/common/platform/json/IJsonObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 137
    :pswitch_4
    iget-object v1, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->name:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/genie_connect/common/platform/json/IJsonObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isKey()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->isKey:Z

    return v0
.end method

.method public putSQLValue(Lcom/genie_connect/common/platform/json/IJsonObject;Lcom/genie_connect/common/db/entityfactory/GenieContentValues;Ljava/lang/String;)V
    .locals 8
    .param p1, "jsonObject"    # Lcom/genie_connect/common/platform/json/IJsonObject;
    .param p2, "row"    # Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
    .param p3, "nameOverride"    # Ljava/lang/String;

    .prologue
    .line 71
    if-nez p3, :cond_0

    iget-object v2, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->name:Ljava/lang/String;

    .line 74
    .local v2, "fname":Ljava/lang/String;
    :goto_0
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$EGAttribute$Type:[I

    iget-object v6, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->type:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-virtual {v6}, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 116
    :goto_1
    return-void

    .end local v2    # "fname":Ljava/lang/String;
    :cond_0
    move-object v2, p3

    .line 71
    goto :goto_0

    .line 76
    .restart local v2    # "fname":Ljava/lang/String;
    :pswitch_0
    iget-object v5, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->name:Ljava/lang/String;

    invoke-interface {p1, v5}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "s":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 78
    invoke-virtual {p2, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_1
    invoke-static {v2, v4, p2}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->putString(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/GenieContentValues;)V

    goto :goto_1

    .line 84
    .end local v4    # "s":Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->name:Ljava/lang/String;

    invoke-interface {p1, v5}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .restart local v4    # "s":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 86
    invoke-virtual {p2, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :cond_2
    invoke-static {v4}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertFromJsonToSqlite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, p2}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->putString(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/GenieContentValues;)V

    goto :goto_1

    .line 92
    .end local v4    # "s":Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->name:Ljava/lang/String;

    invoke-interface {p1, v5}, Lcom/genie_connect/common/platform/json/IJsonObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 93
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_3

    .line 94
    invoke-virtual {p2, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {p2, v2, v0}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 100
    .end local v0    # "b":Ljava/lang/Boolean;
    :pswitch_3
    iget-object v5, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->name:Ljava/lang/String;

    invoke-interface {p1, v5}, Lcom/genie_connect/common/platform/json/IJsonObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 101
    .local v3, "l":Ljava/lang/Long;
    if-nez v3, :cond_4

    .line 102
    invoke-virtual {p2, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_4
    invoke-virtual {p2, v2, v3}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 108
    .end local v3    # "l":Ljava/lang/Long;
    :pswitch_4
    iget-object v5, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->name:Ljava/lang/String;

    invoke-interface {p1, v5}, Lcom/genie_connect/common/platform/json/IJsonObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 109
    .local v1, "d":Ljava/lang/Double;
    if-nez v1, :cond_5

    .line 110
    invoke-virtual {p2, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_5
    invoke-virtual {p2, v2, v1}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public putSQLValue(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/GenieContentValues;Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "row"    # Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
    .param p3, "nameOverride"    # Ljava/lang/String;

    .prologue
    .line 144
    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->name:Ljava/lang/String;

    .end local p3    # "nameOverride":Ljava/lang/String;
    :cond_0
    invoke-static {p3, p1, p2}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->putString(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/GenieContentValues;)V

    .line 148
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EGATTRIBUTE] : Type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->type:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' Name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
