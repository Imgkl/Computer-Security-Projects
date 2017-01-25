.class Lcom/eventgenie/android/adapters/base/AtoZIndexer;
.super Ljava/lang/Object;
.source "AtoZIndexer.java"


# static fields
.field private static final MAX_ITEMS_BEFORE_SECTIONS_ARE_DISABLED:I = 0x1f40

.field private static final PREALLOCATED_POSITIONS:I = 0x3e8

.field private static final ZERO:Ljava/lang/String; = "0"


# instance fields
.field private final mAlphaIndexColumn:Ljava/lang/String;

.field private final mAlphaIndexer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPositions:[I

.field private mSections:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "alphaIndexColumn"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mAlphaIndexColumn:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mAlphaIndexer:Ljava/util/Map;

    .line 62
    return-void
.end method

.method private static getFirstCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 187
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    const-string v1, "0"

    .line 196
    :goto_0
    return-object v1

    .line 188
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 193
    .local v0, "c":C
    const/16 v1, 0x30

    if-lt v0, v1, :cond_2

    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 194
    const-string v1, "0"

    goto :goto_0

    .line 196
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v0

    return-object v0
.end method

.method private static sortKeyList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ AtoZ: Number of Keys: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 208
    :try_start_0
    new-instance v2, Ljava/util/Locale;

    invoke-static {}, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getLocaleCountry()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .local v2, "loc":Ljava/util/Locale;
    invoke-static {v2}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 214
    .local v0, "col":Ljava/text/Collator;
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v0    # "col":Ljava/text/Collator;
    .end local v2    # "loc":Ljava/util/Locale;
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public generateIndexes(Landroid/database/Cursor;)V
    .locals 28
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mAlphaIndexer:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->clear()V

    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 69
    .local v20, "time1":J
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 71
    .local v9, "cursorCount":I
    const/16 v24, 0x1f40

    move/from16 v0, v24

    if-gt v9, v0, :cond_9

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mAlphaIndexColumn:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 73
    .local v4, "alphaColumnIndex":I
    new-array v0, v9, [I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mPositions:[I

    .line 75
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v4, v0, :cond_1

    .line 152
    .end local v4    # "alphaColumnIndex":I
    .end local v9    # "cursorCount":I
    .end local v20    # "time1":J
    :cond_0
    :goto_0
    return-void

    .line 77
    .restart local v4    # "alphaColumnIndex":I
    .restart local v9    # "cursorCount":I
    .restart local v20    # "time1":J
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    const/16 v24, 0x64

    move/from16 v0, v24

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .local v15, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 83
    const/4 v8, 0x1

    .line 85
    .local v8, "currentIndex":I
    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 86
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 87
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 89
    .local v10, "element":Ljava/lang/String;
    if-nez v10, :cond_3

    .line 90
    const-string v6, "0"

    .line 95
    .local v6, "c":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mAlphaIndexer:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mAlphaIndexer:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 92
    .end local v6    # "c":Ljava/lang/String;
    :cond_3
    invoke-static {v10}, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->getFirstCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "c":Ljava/lang/String;
    goto :goto_2

    .line 100
    .end local v6    # "c":Ljava/lang/String;
    .end local v10    # "element":Ljava/lang/String;
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mAlphaIndexer:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 104
    .local v16, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 106
    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 107
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 110
    :cond_5
    invoke-static {v15}, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->sortKeyList(Ljava/util/List;)V

    .line 112
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mSections:[Ljava/lang/String;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mSections:[Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 121
    const/4 v7, 0x0

    .line 122
    .local v7, "count":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mSections:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_4
    move/from16 v0, v17

    if-ge v12, v0, :cond_8

    aget-object v18, v5, v12

    .line 123
    .local v18, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mAlphaIndexer:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 128
    .local v19, "startingSectionIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mSections:[Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    if-ne v7, v0, :cond_6

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mPositions:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v11, v24, -0x1

    .line 136
    .local v11, "endindSectionIndex":I
    :goto_5
    move/from16 v14, v19

    .local v14, "j":I
    :goto_6
    if-ge v14, v11, :cond_7

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mPositions:[I

    move-object/from16 v24, v0

    aput v7, v24, v14

    .line 136
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 133
    .end local v11    # "endindSectionIndex":I
    .end local v14    # "j":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mAlphaIndexer:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mSections:[Ljava/lang/String;

    move-object/from16 v25, v0

    add-int/lit8 v26, v7, 0x1

    aget-object v25, v25, v26

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .restart local v11    # "endindSectionIndex":I
    goto :goto_5

    .line 141
    .restart local v14    # "j":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 122
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 144
    .end local v11    # "endindSectionIndex":I
    .end local v14    # "j":I
    .end local v18    # "s":Ljava/lang/String;
    .end local v19    # "startingSectionIndex":I
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 145
    .local v22, "time2":J
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "^ AtoZ: generateIndexes() - Time taken: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sub-long v26, v22, v20

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ms"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    .end local v4    # "alphaColumnIndex":I
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v7    # "count":I
    .end local v8    # "currentIndex":I
    .end local v12    # "i$":I
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "len$":I
    .end local v22    # "time2":J
    :cond_9
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mSections:[Ljava/lang/String;

    .line 148
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mPositions:[I

    .line 149
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "^ AtoZ: Disabling List Sections as we have "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x1f40

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 3
    .param p1, "section"    # I

    .prologue
    .line 155
    iget-object v1, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mSections:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 156
    const/4 v1, 0x0

    .line 162
    :goto_0
    return v1

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mSections:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 159
    .local v0, "maxIndex":I
    if-le p1, v0, :cond_1

    .line 160
    iget-object v1, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mAlphaIndexer:Ljava/util/Map;

    iget-object v2, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mSections:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mAlphaIndexer:Ljava/util/Map;

    iget-object v2, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mSections:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 168
    iget-object v1, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mPositions:[I

    if-nez v1, :cond_0

    .line 169
    const/4 v1, 0x0

    .line 175
    :goto_0
    return v1

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mPositions:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 172
    .local v0, "maxIndex":I
    if-le p1, v0, :cond_1

    .line 173
    iget-object v1, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mPositions:[I

    aget v1, v1, v0

    goto :goto_0

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mPositions:[I

    aget v1, v1, p1

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexer;->mSections:[Ljava/lang/String;

    return-object v0
.end method
