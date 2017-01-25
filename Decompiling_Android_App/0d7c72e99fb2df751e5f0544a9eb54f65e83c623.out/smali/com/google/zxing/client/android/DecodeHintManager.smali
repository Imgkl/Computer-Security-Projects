.class final Lcom/google/zxing/client/android/DecodeHintManager;
.super Ljava/lang/Object;
.source "DecodeHintManager.java"


# static fields
.field private static final COMMA:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/google/zxing/client/android/DecodeHintManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/DecodeHintManager;->TAG:Ljava/lang/String;

    .line 39
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/DecodeHintManager;->COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseDecodeHints(Landroid/content/Intent;)Ljava/util/Map;
    .locals 11
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 203
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 204
    :cond_0
    const/4 v5, 0x0

    .line 233
    :goto_0
    return-object v5

    .line 206
    :cond_1
    new-instance v5, Ljava/util/EnumMap;

    const-class v8, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v5, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 208
    .local v5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/google/zxing/DecodeHintType;->values()[Lcom/google/zxing/DecodeHintType;

    move-result-object v0

    .local v0, "arr$":[Lcom/google/zxing/DecodeHintType;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_6

    aget-object v4, v0, v6

    .line 210
    .local v4, "hintType":Lcom/google/zxing/DecodeHintType;
    sget-object v8, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    if-eq v4, v8, :cond_2

    sget-object v8, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    if-eq v4, v8, :cond_2

    sget-object v8, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    if-ne v4, v8, :cond_3

    .line 208
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 216
    :cond_3
    invoke-virtual {v4}, Lcom/google/zxing/DecodeHintType;->name()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "hintName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 218
    invoke-virtual {v4}, Lcom/google/zxing/DecodeHintType;->getValueType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/Void;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 220
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 222
    :cond_4
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 223
    .local v2, "hintData":Ljava/lang/Object;
    invoke-virtual {v4}, Lcom/google/zxing/DecodeHintType;->getValueType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 224
    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 226
    :cond_5
    sget-object v8, Lcom/google/zxing/client/android/DecodeHintManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring hint "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " because it is not assignable from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 232
    .end local v2    # "hintData":Ljava/lang/Object;
    .end local v3    # "hintName":Ljava/lang/String;
    .end local v4    # "hintType":Lcom/google/zxing/DecodeHintType;
    :cond_6
    sget-object v8, Lcom/google/zxing/client/android/DecodeHintManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Hints from the Intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static parseDecodeHints(Landroid/net/Uri;)Ljava/util/Map;
    .locals 16
    .param p0, "inputUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v11

    .line 119
    .local v11, "query":Ljava/lang/String;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    .line 120
    :cond_0
    const/4 v3, 0x0

    .line 198
    :goto_0
    return-object v3

    .line 124
    :cond_1
    invoke-static {v11}, Lcom/google/zxing/client/android/DecodeHintManager;->splitQuery(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 126
    .local v10, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/EnumMap;

    const-class v13, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v3, v13}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 128
    .local v3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/google/zxing/DecodeHintType;->values()[Lcom/google/zxing/DecodeHintType;

    move-result-object v0

    .local v0, "arr$":[Lcom/google/zxing/DecodeHintType;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_e

    aget-object v2, v0, v5

    .line 130
    .local v2, "hintType":Lcom/google/zxing/DecodeHintType;
    sget-object v13, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    if-eq v2, v13, :cond_2

    sget-object v13, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    if-eq v2, v13, :cond_2

    sget-object v13, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    if-ne v2, v13, :cond_3

    .line 128
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 136
    :cond_3
    invoke-virtual {v2}, Lcom/google/zxing/DecodeHintType;->name()Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, "parameterName":Ljava/lang/String;
    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 138
    .local v9, "parameterText":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 141
    invoke-virtual {v2}, Lcom/google/zxing/DecodeHintType;->getValueType()Ljava/lang/Class;

    move-result-object v13

    const-class v14, Ljava/lang/Object;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 144
    invoke-interface {v3, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 147
    :cond_4
    invoke-virtual {v2}, Lcom/google/zxing/DecodeHintType;->getValueType()Ljava/lang/Class;

    move-result-object v13

    const-class v14, Ljava/lang/Void;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 149
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 152
    :cond_5
    invoke-virtual {v2}, Lcom/google/zxing/DecodeHintType;->getValueType()Ljava/lang/Class;

    move-result-object v13

    const-class v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 154
    invoke-interface {v3, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 157
    :cond_6
    invoke-virtual {v2}, Lcom/google/zxing/DecodeHintType;->getValueType()Ljava/lang/Class;

    move-result-object v13

    const-class v14, Ljava/lang/Boolean;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 160
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_7

    .line 161
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 162
    :cond_7
    const-string v13, "0"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string v13, "false"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string v13, "no"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 165
    :cond_8
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 167
    :cond_9
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 172
    :cond_a
    invoke-virtual {v2}, Lcom/google/zxing/DecodeHintType;->getValueType()Ljava/lang/Class;

    move-result-object v13

    const-class v14, [I

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 175
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_b

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v9, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2c

    if-ne v13, v14, :cond_b

    .line 176
    const/4 v13, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 178
    :cond_b
    sget-object v13, Lcom/google/zxing/client/android/DecodeHintManager;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v9}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v12

    .line 179
    .local v12, "values":[Ljava/lang/String;
    array-length v13, v12

    new-array v1, v13, [I

    .line 180
    .local v1, "array":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v13, v12

    if-ge v4, v13, :cond_c

    .line 182
    :try_start_0
    aget-object v13, v12, v4

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aput v13, v1, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 183
    :catch_0
    move-exception v6

    .line 184
    .local v6, "ignored":Ljava/lang/NumberFormatException;
    sget-object v13, Lcom/google/zxing/client/android/DecodeHintManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping array of integers hint "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " due to invalid numeric value: \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v12, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x27

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v1, 0x0

    .line 189
    .end local v6    # "ignored":Ljava/lang/NumberFormatException;
    :cond_c
    if-eqz v1, :cond_2

    .line 190
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 194
    .end local v1    # "array":[I
    .end local v4    # "i":I
    .end local v12    # "values":[Ljava/lang/String;
    :cond_d
    sget-object v13, Lcom/google/zxing/client/android/DecodeHintManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unsupported hint type \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' of type "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lcom/google/zxing/DecodeHintType;->getValueType()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 197
    .end local v2    # "hintType":Lcom/google/zxing/DecodeHintType;
    .end local v8    # "parameterName":Ljava/lang/String;
    .end local v9    # "parameterText":Ljava/lang/String;
    :cond_e
    sget-object v13, Lcom/google/zxing/client/android/DecodeHintManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Hints from the URI: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static splitQuery(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p0, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x26

    const/16 v8, 0x2b

    const/16 v7, 0x20

    .line 58
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 60
    .local v4, "pos":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 61
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_0

    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 64
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 67
    .local v0, "amp":I
    const/16 v6, 0x3d

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 68
    .local v1, "equ":I
    if-gez v0, :cond_3

    .line 72
    if-gez v1, :cond_2

    .line 74
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    const-string v5, ""

    .line 87
    .local v5, "text":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 88
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .end local v0    # "amp":I
    .end local v1    # "equ":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :cond_1
    return-object v2

    .line 80
    .restart local v0    # "amp":I
    .restart local v1    # "equ":I
    :cond_2
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 81
    .restart local v3    # "name":Ljava/lang/String;
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 84
    .restart local v5    # "text":Ljava/lang/String;
    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 92
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :cond_3
    if-ltz v1, :cond_4

    if-le v1, v0, :cond_6

    .line 94
    :cond_4
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 95
    .restart local v3    # "name":Ljava/lang/String;
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 98
    const-string v6, ""

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_5
    add-int/lit8 v4, v0, 0x1

    .line 101
    goto :goto_0

    .line 103
    .end local v3    # "name":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 104
    .restart local v3    # "name":Ljava/lang/String;
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 107
    .restart local v5    # "text":Ljava/lang/String;
    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 110
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_7
    add-int/lit8 v4, v0, 0x1

    .line 113
    goto/16 :goto_0
.end method
