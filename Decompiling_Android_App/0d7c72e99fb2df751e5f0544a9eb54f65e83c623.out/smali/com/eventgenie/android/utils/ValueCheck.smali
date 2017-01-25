.class public Lcom/eventgenie/android/utils/ValueCheck;
.super Ljava/lang/Object;
.source "ValueCheck.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkForNull(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0
    .param p0, "suspectValue"    # Ljava/lang/Double;
    .param p1, "defaultValue"    # Ljava/lang/Double;

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 47
    .end local p1    # "defaultValue":Ljava/lang/Double;
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/Double;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static checkForNull(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "suspectValue"    # Ljava/lang/Integer;
    .param p1, "defaultValue"    # Ljava/lang/Integer;

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 54
    .end local p1    # "defaultValue":Ljava/lang/Integer;
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/Integer;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static checkForNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "suspectValue"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 40
    .end local p1    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static hasContent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 80
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 81
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasContent(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "val":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tryDouble(Ljava/lang/String;Ljava/lang/Double;)D
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/Double;

    .prologue
    .line 64
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 66
    :goto_0
    return-wide v2

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public static tryLong(Ljava/lang/String;J)J
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 72
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .line 74
    .end local p1    # "defaultValue":J
    :goto_0
    return-wide p1

    .line 73
    .restart local p1    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
