.class public Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;
.super Ljava/lang/Object;
.source "ContactStruct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$OrganizationData;,
        Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;,
        Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$PhoneData;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ContactStruct"

.field public static final NAME_ORDER_TYPE_ENGLISH:I = 0x0

.field public static final NAME_ORDER_TYPE_JAPANESE:I = 0x1


# instance fields
.field public company:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public contactmethodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;",
            ">;"
        }
    .end annotation
.end field

.field public extensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public organizationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$OrganizationData;",
            ">;"
        }
    .end annotation
.end field

.field public phoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$PhoneData;",
            ">;"
        }
    .end annotation
.end field

.field public phoneticName:Ljava/lang/String;

.field public photoBytes:[B

.field public photoType:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->notes:Ljava/util/List;

    .line 104
    return-void
.end method

.method public static constructContactFromVNode(Lcom/a_vcard/android/syncml/pim/VNode;I)Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;
    .locals 45
    .param p0, "node"    # Lcom/a_vcard/android/syncml/pim/VNode;
    .param p1, "nameOrderType"    # I

    .prologue
    .line 284
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a_vcard/android/syncml/pim/VNode;->VName:Ljava/lang/String;

    const-string v9, "VCARD"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 286
    const-string v8, "^ Non VCARD data is inserted."

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 287
    const/4 v2, 0x0

    .line 715
    :cond_0
    :goto_0
    return-object v2

    .line 294
    :cond_1
    const/16 v20, 0x0

    .line 295
    .local v20, "fullName":Ljava/lang/String;
    const/16 v29, 0x0

    .line 299
    .local v29, "nameFromNProperty":Ljava/lang/String;
    const/16 v42, 0x0

    .line 300
    .local v42, "xPhoneticFirstName":Ljava/lang/String;
    const/16 v44, 0x0

    .line 301
    .local v44, "xPhoneticMiddleName":Ljava/lang/String;
    const/16 v43, 0x0

    .line 303
    .local v43, "xPhoneticLastName":Ljava/lang/String;
    new-instance v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;

    invoke-direct {v2}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;-><init>()V

    .line 309
    .local v2, "contact":Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;
    const/16 v30, 0x0

    .line 310
    .local v30, "prefIsSetAddress":Z
    const/16 v33, 0x0

    .line 311
    .local v33, "prefIsSetPhone":Z
    const/16 v31, 0x0

    .line 312
    .local v31, "prefIsSetEmail":Z
    const/16 v32, 0x0

    .line 314
    .local v32, "prefIsSetOrganization":Z
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a_vcard/android/syncml/pim/VNode;->propList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_2
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_51

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/a_vcard/android/syncml/pim/PropertyNode;

    .line 315
    .local v34, "propertyNode":Lcom/a_vcard/android/syncml/pim/PropertyNode;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 317
    .local v28, "name":Ljava/lang/String;
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v8}, Lcom/a_vcard/android/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 321
    const-string v8, "VERSION"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 323
    const-string v8, "FN"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 324
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v20, v0

    goto :goto_1

    .line 325
    :cond_3
    const-string v8, "NAME"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v20, :cond_4

    .line 328
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v20, v0

    goto :goto_1

    .line 329
    :cond_4
    const-string v8, "N"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 330
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    move/from16 v0, p1

    invoke-static {v8, v0}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->getNameFromNProperty(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v29

    goto :goto_1

    .line 332
    :cond_5
    const-string v8, "SORT-STRING"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 333
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    iput-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->phoneticName:Ljava/lang/String;

    goto :goto_1

    .line 334
    :cond_6
    const-string v8, "SOUND"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 335
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string v9, "X-IRMC-N"

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->phoneticName:Ljava/lang/String;

    if-nez v8, :cond_9

    .line 341
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .local v15, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v38, v0

    .line 343
    .local v38, "value":Ljava/lang/String;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v26

    .line 344
    .local v26, "length":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 345
    move-object/from16 v0, v38

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 346
    .local v17, "ch":C
    const/16 v8, 0x3b

    move/from16 v0, v17

    if-eq v0, v8, :cond_7

    .line 347
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    :cond_7
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 350
    .end local v17    # "ch":C
    :cond_8
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->phoneticName:Ljava/lang/String;

    goto/16 :goto_1

    .line 352
    .end local v15    # "builder":Ljava/lang/StringBuilder;
    .end local v21    # "i":I
    .end local v26    # "length":I
    .end local v38    # "value":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addExtension(Lcom/a_vcard/android/syncml/pim/PropertyNode;)V

    goto/16 :goto_1

    .line 354
    :cond_a
    const-string v8, "ADR"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 355
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    move-object/from16 v40, v0

    .line 356
    .local v40, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v41, 0x1

    .line 357
    .local v41, "valuesAreAllEmpty":Z
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 358
    .restart local v38    # "value":Ljava/lang/String;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_b

    .line 359
    const/16 v41, 0x0

    .line 363
    .end local v38    # "value":Ljava/lang/String;
    :cond_c
    if-nez v41, :cond_2

    .line 367
    const/4 v3, 0x2

    .line 368
    .local v3, "kind":I
    const/4 v4, -0x1

    .line 369
    .local v4, "type":I
    const-string v6, ""

    .line 370
    .local v6, "label":Ljava/lang/String;
    const/4 v7, 0x0

    .line 371
    .local v7, "isPrimary":Z
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_d
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 372
    .local v37, "typeString":Ljava/lang/String;
    const-string v8, "PREF"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    if-nez v30, :cond_e

    .line 374
    const/16 v30, 0x1

    .line 375
    const/4 v7, 0x1

    goto :goto_3

    .line 376
    :cond_e
    const-string v8, "HOME"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 377
    const/4 v4, 0x1

    .line 378
    const-string v6, ""

    goto :goto_3

    .line 379
    :cond_f
    const-string v8, "WORK"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string v8, "COMPANY"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 384
    :cond_10
    const/4 v4, 0x2

    .line 385
    const-string v6, ""

    goto :goto_3

    .line 386
    :cond_11
    const-string v8, "POSTAL"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 387
    const/4 v3, 0x2

    goto :goto_3

    .line 388
    :cond_12
    const-string v8, "PARCEL"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "DOM"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "INTL"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 394
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "X-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    if-gez v4, :cond_13

    .line 396
    const/4 v4, 0x0

    .line 397
    const/4 v8, 0x2

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 398
    :cond_13
    if-gez v4, :cond_d

    .line 401
    const/4 v4, 0x0

    .line 402
    move-object/from16 v6, v37

    goto/16 :goto_3

    .line 406
    .end local v37    # "typeString":Ljava/lang/String;
    :cond_14
    if-gez v4, :cond_15

    .line 407
    const/4 v4, 0x1

    .line 414
    :cond_15
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    move-object/from16 v27, v0

    .line 415
    .local v27, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v36

    .line 416
    .local v36, "size":I
    const/4 v8, 0x1

    move/from16 v0, v36

    if-le v0, v8, :cond_1c

    .line 417
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .restart local v15    # "builder":Ljava/lang/StringBuilder;
    const/16 v16, 0x1

    .line 419
    .local v16, "builderIsEmpty":Z
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 421
    add-int/lit8 v21, v36, -0x1

    .restart local v21    # "i":I
    :goto_4
    if-ltz v21, :cond_1b

    .line 422
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 423
    .local v14, "addressPart":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_17

    .line 424
    if-nez v16, :cond_16

    .line 425
    const/16 v8, 0x20

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    :cond_16
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const/16 v16, 0x0

    .line 421
    :cond_17
    add-int/lit8 v21, v21, -0x1

    goto :goto_4

    .line 432
    .end local v14    # "addressPart":Ljava/lang/String;
    .end local v21    # "i":I
    :cond_18
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_5
    move/from16 v0, v21

    move/from16 v1, v36

    if-ge v0, v1, :cond_1b

    .line 433
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 434
    .restart local v14    # "addressPart":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1a

    .line 435
    if-nez v16, :cond_19

    .line 436
    const/16 v8, 0x20

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 438
    :cond_19
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const/16 v16, 0x0

    .line 432
    :cond_1a
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 443
    .end local v14    # "addressPart":Ljava/lang/String;
    :cond_1b
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 447
    .end local v15    # "builder":Ljava/lang/StringBuilder;
    .end local v16    # "builderIsEmpty":Z
    .end local v21    # "i":I
    .local v5, "address":Ljava/lang/String;
    :goto_6
    invoke-virtual/range {v2 .. v7}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addContactmethod(IILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 445
    .end local v5    # "address":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    .restart local v5    # "address":Ljava/lang/String;
    goto :goto_6

    .line 448
    .end local v3    # "kind":I
    .end local v4    # "type":I
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "label":Ljava/lang/String;
    .end local v7    # "isPrimary":Z
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v27    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "size":I
    .end local v40    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v41    # "valuesAreAllEmpty":Z
    :cond_1d
    const-string v8, "ORG"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 450
    const/4 v4, 0x1

    .line 451
    .restart local v4    # "type":I
    const/4 v7, 0x0

    .line 453
    .restart local v7    # "isPrimary":Z
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_1e
    :goto_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 454
    .restart local v37    # "typeString":Ljava/lang/String;
    const-string v8, "PREF"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    if-nez v32, :cond_1e

    .line 457
    const/16 v32, 0x1

    .line 458
    const/4 v7, 0x1

    goto :goto_7

    .line 463
    .end local v37    # "typeString":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    move-object/from16 v27, v0

    .line 465
    .restart local v27    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .restart local v15    # "builder":Ljava/lang/StringBuilder;
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_20
    :goto_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 467
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    .line 469
    const/16 v8, 0x20

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 473
    :cond_21
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v2, v4, v8, v9, v7}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addOrganization(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 474
    .end local v4    # "type":I
    .end local v7    # "isPrimary":Z
    .end local v15    # "builder":Ljava/lang/StringBuilder;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v25    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v27    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_22
    const-string v8, "TITLE"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 475
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->setPosition(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 476
    :cond_23
    const-string v8, "ROLE"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 477
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->setPosition(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 478
    :cond_24
    const-string v8, "PHOTO"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 480
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->paramMap:Lcom/a_vcard/android/content/ContentValues;

    const-string v9, "VALUE"

    invoke-virtual {v8, v9}, Lcom/a_vcard/android/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 481
    .local v39, "valueType":Ljava/lang/String;
    if-eqz v39, :cond_25

    const-string v8, "URL"

    move-object/from16 v0, v39

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 487
    :cond_25
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue_bytes:[B

    iput-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->photoBytes:[B

    .line 488
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->paramMap:Lcom/a_vcard/android/content/ContentValues;

    const-string v9, "TYPE"

    invoke-virtual {v8, v9}, Lcom/a_vcard/android/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 489
    .local v4, "type":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 490
    iput-object v4, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->photoType:Ljava/lang/String;

    goto/16 :goto_1

    .line 493
    .end local v4    # "type":Ljava/lang/String;
    .end local v39    # "valueType":Ljava/lang/String;
    :cond_26
    const-string v8, "LOGO"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 496
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->paramMap:Lcom/a_vcard/android/content/ContentValues;

    const-string v9, "VALUE"

    invoke-virtual {v8, v9}, Lcom/a_vcard/android/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 497
    .restart local v39    # "valueType":Ljava/lang/String;
    if-eqz v39, :cond_27

    const-string v8, "URL"

    move-object/from16 v0, v39

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 499
    :cond_27
    iget-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->photoBytes:[B

    if-nez v8, :cond_2

    .line 500
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue_bytes:[B

    iput-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->photoBytes:[B

    .line 501
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->paramMap:Lcom/a_vcard/android/content/ContentValues;

    const-string v9, "TYPE"

    invoke-virtual {v8, v9}, Lcom/a_vcard/android/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 502
    .restart local v4    # "type":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 503
    iput-object v4, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->photoType:Ljava/lang/String;

    goto/16 :goto_1

    .line 506
    .end local v4    # "type":Ljava/lang/String;
    .end local v39    # "valueType":Ljava/lang/String;
    :cond_28
    const-string v8, "EMAIL"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 507
    const/4 v4, -0x1

    .line 508
    .local v4, "type":I
    const/4 v6, 0x0

    .line 509
    .restart local v6    # "label":Ljava/lang/String;
    const/4 v7, 0x0

    .line 510
    .restart local v7    # "isPrimary":Z
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_29
    :goto_9
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 511
    .restart local v37    # "typeString":Ljava/lang/String;
    const-string v8, "PREF"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    if-nez v31, :cond_2a

    .line 513
    const/16 v31, 0x1

    .line 514
    const/4 v7, 0x1

    goto :goto_9

    .line 515
    :cond_2a
    const-string v8, "HOME"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 516
    const/4 v4, 0x1

    goto :goto_9

    .line 517
    :cond_2b
    const-string v8, "WORK"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 518
    const/4 v4, 0x2

    goto :goto_9

    .line 519
    :cond_2c
    const-string v8, "CELL"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 521
    const/4 v4, 0x0

    .line 522
    const-string v6, "_AUTO_CELL"

    goto :goto_9

    .line 523
    :cond_2d
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "X-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2e

    if-gez v4, :cond_2e

    .line 525
    const/4 v4, 0x0

    .line 526
    const/4 v8, 0x2

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    .line 527
    :cond_2e
    if-gez v4, :cond_29

    .line 531
    const/4 v4, 0x0

    .line 532
    move-object/from16 v6, v37

    goto :goto_9

    .line 536
    .end local v37    # "typeString":Ljava/lang/String;
    :cond_2f
    if-gez v4, :cond_30

    .line 537
    const/4 v4, 0x3

    .line 539
    :cond_30
    const/4 v9, 0x1

    move-object/from16 v0, v34

    iget-object v11, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object v8, v2

    move v10, v4

    move-object v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addContactmethod(IILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 541
    .end local v4    # "type":I
    .end local v6    # "label":Ljava/lang/String;
    .end local v7    # "isPrimary":Z
    .end local v23    # "i$":Ljava/util/Iterator;
    :cond_31
    const-string v8, "TEL"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 542
    const/4 v4, -0x1

    .line 543
    .restart local v4    # "type":I
    const/4 v6, 0x0

    .line 544
    .restart local v6    # "label":Ljava/lang/String;
    const/4 v7, 0x0

    .line 545
    .restart local v7    # "isPrimary":Z
    const/16 v24, 0x0

    .line 546
    .local v24, "isFax":Z
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_32
    :goto_a
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 547
    .restart local v37    # "typeString":Ljava/lang/String;
    const-string v8, "PREF"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    if-nez v33, :cond_33

    .line 549
    const/16 v33, 0x1

    .line 550
    const/4 v7, 0x1

    goto :goto_a

    .line 551
    :cond_33
    const-string v8, "HOME"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_34

    .line 552
    const/4 v4, 0x1

    goto :goto_a

    .line 553
    :cond_34
    const-string v8, "WORK"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 554
    const/4 v4, 0x3

    goto :goto_a

    .line 555
    :cond_35
    const-string v8, "CELL"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 556
    const/4 v4, 0x2

    goto :goto_a

    .line 557
    :cond_36
    const-string v8, "PAGER"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 558
    const/4 v4, 0x6

    goto :goto_a

    .line 559
    :cond_37
    const-string v8, "FAX"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 560
    const/16 v24, 0x1

    goto :goto_a

    .line 561
    :cond_38
    const-string v8, "VOICE"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_32

    const-string v8, "MSG"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_32

    .line 566
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "X-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39

    if-gez v4, :cond_39

    .line 568
    const/4 v4, 0x0

    .line 569
    const/4 v8, 0x2

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_a

    .line 570
    :cond_39
    if-gez v4, :cond_32

    .line 572
    const/4 v4, 0x0

    .line 573
    move-object/from16 v6, v37

    goto/16 :goto_a

    .line 577
    .end local v37    # "typeString":Ljava/lang/String;
    :cond_3a
    if-gez v4, :cond_3b

    .line 578
    const/4 v4, 0x1

    .line 580
    :cond_3b
    if-eqz v24, :cond_3c

    .line 581
    const/4 v8, 0x1

    if-ne v4, v8, :cond_3d

    .line 582
    const/4 v4, 0x5

    .line 588
    :cond_3c
    :goto_b
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v2, v4, v8, v6, v7}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 583
    :cond_3d
    const/4 v8, 0x3

    if-ne v4, v8, :cond_3c

    .line 584
    const/4 v4, 0x4

    goto :goto_b

    .line 589
    .end local v4    # "type":I
    .end local v6    # "label":Ljava/lang/String;
    .end local v7    # "isPrimary":Z
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v24    # "isFax":Z
    :cond_3e
    const-string v8, "NOTE"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 590
    iget-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->notes:Ljava/util/List;

    move-object/from16 v0, v34

    iget-object v9, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 591
    :cond_3f
    const-string v8, "BDAY"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_40

    .line 592
    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addExtension(Lcom/a_vcard/android/syncml/pim/PropertyNode;)V

    goto/16 :goto_1

    .line 593
    :cond_40
    const-string v8, "URL"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41

    .line 594
    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addExtension(Lcom/a_vcard/android/syncml/pim/PropertyNode;)V

    goto/16 :goto_1

    .line 595
    :cond_41
    const-string v8, "REV"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 597
    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addExtension(Lcom/a_vcard/android/syncml/pim/PropertyNode;)V

    goto/16 :goto_1

    .line 598
    :cond_42
    const-string v8, "UID"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 599
    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addExtension(Lcom/a_vcard/android/syncml/pim/PropertyNode;)V

    goto/16 :goto_1

    .line 600
    :cond_43
    const-string v8, "KEY"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 602
    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addExtension(Lcom/a_vcard/android/syncml/pim/PropertyNode;)V

    goto/16 :goto_1

    .line 603
    :cond_44
    const-string v8, "MAILER"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 604
    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addExtension(Lcom/a_vcard/android/syncml/pim/PropertyNode;)V

    goto/16 :goto_1

    .line 605
    :cond_45
    const-string v8, "TZ"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 606
    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addExtension(Lcom/a_vcard/android/syncml/pim/PropertyNode;)V

    goto/16 :goto_1

    .line 607
    :cond_46
    const-string v8, "GEO"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 608
    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addExtension(Lcom/a_vcard/android/syncml/pim/PropertyNode;)V

    goto/16 :goto_1

    .line 609
    :cond_47
    const-string v8, "NICKNAME"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 611
    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addExtension(Lcom/a_vcard/android/syncml/pim/PropertyNode;)V

    goto/16 :goto_1

    .line 612
    :cond_48
    const-string v8, "CLASS"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 615
    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addExtension(Lcom/a_vcard/android/syncml/pim/PropertyNode;)V

    goto/16 :goto_1

    .line 616
    :cond_49
    const-string v8, "PROFILE"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 618
    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addExtension(Lcom/a_vcard/android/syncml/pim/PropertyNode;)V

    goto/16 :goto_1

    .line 619
    :cond_4a
    const-string v8, "CATEGORIES"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 622
    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addExtension(Lcom/a_vcard/android/syncml/pim/PropertyNode;)V

    goto/16 :goto_1

    .line 623
    :cond_4b
    const-string v8, "SOURCE"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4c

    .line 625
    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addExtension(Lcom/a_vcard/android/syncml/pim/PropertyNode;)V

    goto/16 :goto_1

    .line 626
    :cond_4c
    const-string v8, "PRODID"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 630
    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addExtension(Lcom/a_vcard/android/syncml/pim/PropertyNode;)V

    goto/16 :goto_1

    .line 631
    :cond_4d
    const-string v8, "X-PHONETIC-FIRST-NAME"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 632
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v42, v0

    goto/16 :goto_1

    .line 633
    :cond_4e
    const-string v8, "X-PHONETIC-MIDDLE-NAME"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 634
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v44, v0

    goto/16 :goto_1

    .line 635
    :cond_4f
    const-string v8, "X-PHONETIC-LAST-NAME"

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 636
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v43, v0

    goto/16 :goto_1

    .line 639
    :cond_50
    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addExtension(Lcom/a_vcard/android/syncml/pim/PropertyNode;)V

    goto/16 :goto_1

    .line 643
    .end local v28    # "name":Ljava/lang/String;
    .end local v34    # "propertyNode":Lcom/a_vcard/android/syncml/pim/PropertyNode;
    :cond_51
    if-eqz v20, :cond_5d

    .line 644
    move-object/from16 v0, v20

    iput-object v0, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->name:Ljava/lang/String;

    .line 651
    :goto_c
    iget-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->phoneticName:Ljava/lang/String;

    if-nez v8, :cond_56

    if-nez v42, :cond_52

    if-nez v44, :cond_52

    if-eqz v43, :cond_56

    .line 658
    :cond_52
    const/4 v8, 0x1

    move/from16 v0, p1

    if-ne v0, v8, :cond_5f

    .line 659
    move-object/from16 v19, v43

    .line 660
    .local v19, "first":Ljava/lang/String;
    move-object/from16 v35, v42

    .line 665
    .local v35, "second":Ljava/lang/String;
    :goto_d
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 666
    .restart local v15    # "builder":Ljava/lang/StringBuilder;
    if-eqz v19, :cond_53

    .line 667
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    :cond_53
    if-eqz v44, :cond_54

    .line 670
    move-object/from16 v0, v44

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    :cond_54
    if-eqz v35, :cond_55

    .line 673
    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    :cond_55
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->phoneticName:Ljava/lang/String;

    .line 682
    .end local v15    # "builder":Ljava/lang/StringBuilder;
    .end local v19    # "first":Ljava/lang/String;
    .end local v35    # "second":Ljava/lang/String;
    :cond_56
    iget-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->phoneticName:Ljava/lang/String;

    if-eqz v8, :cond_57

    .line 683
    iget-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->phoneticName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->phoneticName:Ljava/lang/String;

    .line 687
    :cond_57
    if-nez v33, :cond_58

    iget-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    if-eqz v8, :cond_58

    iget-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_58

    .line 690
    iget-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$PhoneData;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$PhoneData;->isPrimary:Z

    .line 693
    :cond_58
    if-nez v30, :cond_5a

    iget-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    if-eqz v8, :cond_5a

    .line 694
    iget-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :cond_59
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5a

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;

    .line 695
    .local v18, "contactMethod":Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;
    move-object/from16 v0, v18

    iget v8, v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;->kind:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_59

    .line 696
    const/4 v8, 0x1

    move-object/from16 v0, v18

    iput-boolean v8, v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;->isPrimary:Z

    .line 701
    .end local v18    # "contactMethod":Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;
    .end local v22    # "i$":Ljava/util/Iterator;
    :cond_5a
    if-nez v31, :cond_5c

    iget-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    if-eqz v8, :cond_5c

    .line 702
    iget-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22    # "i$":Ljava/util/Iterator;
    :cond_5b
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;

    .line 703
    .restart local v18    # "contactMethod":Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;
    move-object/from16 v0, v18

    iget v8, v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;->kind:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5b

    .line 704
    const/4 v8, 0x1

    move-object/from16 v0, v18

    iput-boolean v8, v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;->isPrimary:Z

    .line 709
    .end local v18    # "contactMethod":Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;
    .end local v22    # "i$":Ljava/util/Iterator;
    :cond_5c
    if-nez v32, :cond_0

    iget-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 712
    iget-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$OrganizationData;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$OrganizationData;->isPrimary:Z

    goto/16 :goto_0

    .line 645
    :cond_5d
    if-eqz v29, :cond_5e

    .line 646
    move-object/from16 v0, v29

    iput-object v0, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->name:Ljava/lang/String;

    goto/16 :goto_c

    .line 648
    :cond_5e
    const-string v8, ""

    iput-object v8, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->name:Ljava/lang/String;

    goto/16 :goto_c

    .line 662
    :cond_5f
    move-object/from16 v19, v42

    .line 663
    .restart local v19    # "first":Ljava/lang/String;
    move-object/from16 v35, v43

    .restart local v35    # "second":Ljava/lang/String;
    goto/16 :goto_d
.end method

.method private static getNameFromNProperty(Ljava/util/List;I)Ljava/lang/String;
    .locals 11
    .param p1, "nameOrderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "elems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/16 v7, 0x20

    const/4 v6, 0x1

    .line 227
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 228
    .local v4, "size":I
    if-le v4, v6, :cond_a

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 232
    .local v1, "builderIsEmpty":Z
    if-le v4, v10, :cond_0

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 233
    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const/4 v1, 0x0

    .line 237
    :cond_0
    if-ne p1, v6, :cond_9

    .line 238
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 239
    .local v2, "first":Ljava/lang/String;
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 244
    .local v3, "second":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 245
    if-nez v1, :cond_1

    .line 246
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const/4 v1, 0x0

    .line 252
    :cond_2
    if-le v4, v9, :cond_4

    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 253
    if-nez v1, :cond_3

    .line 254
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    :cond_3
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const/4 v1, 0x0

    .line 259
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 260
    if-nez v1, :cond_5

    .line 261
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const/4 v1, 0x0

    .line 267
    :cond_6
    const/4 v5, 0x4

    if-le v4, v5, :cond_8

    const/4 v5, 0x4

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 268
    if-nez v1, :cond_7

    .line 269
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    :cond_7
    const/4 v5, 0x4

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const/4 v1, 0x0

    .line 274
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 278
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "builderIsEmpty":Z
    .end local v2    # "first":Ljava/lang/String;
    .end local v3    # "second":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 241
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "builderIsEmpty":Z
    :cond_9
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 242
    .restart local v2    # "first":Ljava/lang/String;
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .restart local v3    # "second":Ljava/lang/String;
    goto :goto_0

    .line 275
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "builderIsEmpty":Z
    .end local v2    # "first":Ljava/lang/String;
    .end local v3    # "second":Ljava/lang/String;
    :cond_a
    if-ne v4, v6, :cond_b

    .line 276
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    .line 278
    :cond_b
    const-string v5, ""

    goto :goto_1
.end method


# virtual methods
.method public addContactmethod(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "kind"    # I
    .param p2, "type"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "isPrimary"    # Z

    .prologue
    .line 149
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    .line 152
    :cond_0
    new-instance v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;

    invoke-direct {v0}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;-><init>()V

    .line 153
    .local v0, "contactMethod":Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;
    iput p1, v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;->kind:I

    .line 154
    iput p2, v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;->type:I

    .line 155
    iput-object p3, v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    .line 156
    iput-object p4, v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;->label:Ljava/lang/String;

    .line 157
    iput-boolean p5, v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;->isPrimary:Z

    .line 158
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public addExtension(Lcom/a_vcard/android/syncml/pim/PropertyNode;)V
    .locals 3
    .param p1, "propertyNode"    # Lcom/a_vcard/android/syncml/pim/PropertyNode;

    .prologue
    .line 206
    iget-object v2, p1, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 223
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v1, p1, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    .line 212
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->extensionMap:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 213
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->extensionMap:Ljava/util/Map;

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->extensionMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->extensionMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :goto_1
    invoke-virtual {p1}, Lcom/a_vcard/android/syncml/pim/PropertyNode;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->extensionMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public addOrganization(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "companyName"    # Ljava/lang/String;
    .param p3, "positionName"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z

    .prologue
    .line 166
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    .line 169
    :cond_0
    new-instance v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$OrganizationData;

    invoke-direct {v0}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$OrganizationData;-><init>()V

    .line 170
    .local v0, "organizationData":Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$OrganizationData;
    iput p1, v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$OrganizationData;->type:I

    .line 171
    iput-object p2, v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$OrganizationData;->companyName:Ljava/lang/String;

    .line 172
    iput-object p3, v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$OrganizationData;->positionName:Ljava/lang/String;

    .line 173
    iput-boolean p4, v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$OrganizationData;->isPrimary:Z

    .line 174
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method public addPhone(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z

    .prologue
    .line 118
    iget-object v6, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    if-nez v6, :cond_0

    .line 119
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    .line 121
    :cond_0
    new-instance v4, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$PhoneData;

    invoke-direct {v4}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$PhoneData;-><init>()V

    .line 122
    .local v4, "phoneData":Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$PhoneData;
    iput p1, v4, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$PhoneData;->type:I

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "trimed":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 127
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 128
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 129
    .local v1, "ch":C
    const/16 v6, 0x30

    if-gt v6, v1, :cond_1

    const/16 v6, 0x39

    if-le v1, v6, :cond_2

    :cond_1
    if-nez v2, :cond_3

    const/16 v6, 0x2b

    if-ne v1, v6, :cond_3

    .line 130
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "ch":C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/a_vcard/android/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$PhoneData;->data:Ljava/lang/String;

    .line 134
    iput-object p3, v4, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$PhoneData;->label:Ljava/lang/String;

    .line 135
    iput-boolean p4, v4, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$PhoneData;->isPrimary:Z

    .line 136
    iget-object v6, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public displayString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 719
    iget-object v3, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 720
    iget-object v3, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->name:Ljava/lang/String;

    .line 736
    :goto_0
    return-object v3

    .line 722
    :cond_0
    iget-object v3, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 723
    iget-object v3, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;

    .line 724
    .local v0, "contactMethod":Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;
    iget v3, v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;->kind:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-boolean v3, v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;->isPrimary:Z

    if-eqz v3, :cond_1

    .line 725
    iget-object v3, v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    goto :goto_0

    .line 729
    .end local v0    # "contactMethod":Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$ContactMethod;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 730
    iget-object v3, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$PhoneData;

    .line 731
    .local v2, "phoneData":Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$PhoneData;
    iget-boolean v3, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$PhoneData;->isPrimary:Z

    if-eqz v3, :cond_3

    .line 732
    iget-object v3, v2, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$PhoneData;->data:Ljava/lang/String;

    goto :goto_0

    .line 736
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "phoneData":Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$PhoneData;
    :cond_4
    const-string v3, ""

    goto :goto_0
.end method

.method public isIgnorable()Z
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/a_vcard/android/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->phoneticName:Ljava/lang/String;

    invoke-static {v0}, Lcom/a_vcard/android/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 6
    .param p1, "positionValue"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 197
    .local v1, "size":I
    if-nez v1, :cond_1

    .line 198
    const/4 v2, 0x2

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->addOrganization(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 199
    const/4 v1, 0x1

    .line 201
    :cond_1
    iget-object v2, p0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct;->organizationList:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$OrganizationData;

    .line 202
    .local v0, "lastData":Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$OrganizationData;
    iput-object p1, v0, Lcom/a_vcard/android/syncml/pim/vcard/ContactStruct$OrganizationData;->positionName:Ljava/lang/String;

    .line 203
    return-void
.end method
