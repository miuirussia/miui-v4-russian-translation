.class public Lcom/android/vcard/VCardBuilder;
.super Ljava/lang/Object;
.source "VCardBuilder.java"


# static fields
.field private static final eW:Ljava/util/Set;

.field private static final fj:Ljava/util/Map;


# instance fields
.field private final P:I

.field private final cA:Z

.field private final cF:Ljava/lang/String;

.field private final eX:Z

.field private final eY:Z

.field private final eZ:Z

.field private final fa:Z

.field private final fb:Z

.field private final fc:Z

.field private final fd:Z

.field private final fe:Z

.field private final ff:Z

.field private final fg:Z

.field private final fh:Ljava/lang/String;

.field private fi:Z

.field private mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/nickname"

    aput-object v2, v1, v3

    const-string v2, "vnd.android.cursor.item/contact_event"

    aput-object v2, v1, v4

    const-string v2, "vnd.android.cursor.item/relation"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardBuilder;->eW:Ljava/util/Set;

    .line 1022
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardBuilder;->fj:Ljava/util/Map;

    .line 1023
    sget-object v0, Lcom/android/vcard/VCardBuilder;->fj:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    sget-object v0, Lcom/android/vcard/VCardBuilder;->fj:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    sget-object v0, Lcom/android/vcard/VCardBuilder;->fj:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    sget-object v0, Lcom/android/vcard/VCardBuilder;->fj:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p1, p0, Lcom/android/vcard/VCardBuilder;->P:I

    .line 137
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "vCard"

    const-string v3, "Should not use vCard 4.0 when building vCard. It is not officially published yet."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->j(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->k(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->eX:Z

    .line 143
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->l(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->fa:Z

    .line 144
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->v(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->cA:Z

    .line 145
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->t(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->eY:Z

    .line 146
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->u(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->eZ:Z

    .line 147
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->n(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->fb:Z

    .line 148
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->o(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->fc:Z

    .line 149
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->p(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->fe:Z

    .line 150
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->q(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->fd:Z

    .line 151
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->t(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->ff:Z

    .line 157
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->j(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "UTF-8"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/android/vcard/VCardBuilder;->fg:Z

    .line 160
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->v(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 161
    const-string v0, "SHIFT_JIS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 165
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    const-string v0, "SHIFT_JIS"

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->cF:Ljava/lang/String;

    .line 199
    :goto_1
    const-string v0, "CHARSET=SHIFT_JIS"

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->fh:Ljava/lang/String;

    .line 220
    :goto_2
    invoke-virtual {p0}, Lcom/android/vcard/VCardBuilder;->clear()V

    .line 221
    return-void

    :cond_4
    move v0, v1

    .line 142
    goto :goto_0

    .line 175
    :cond_5
    iput-object p2, p0, Lcom/android/vcard/VCardBuilder;->cF:Ljava/lang/String;

    goto :goto_1

    .line 197
    :cond_6
    iput-object p2, p0, Lcom/android/vcard/VCardBuilder;->cF:Ljava/lang/String;

    goto :goto_1

    .line 201
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 202
    const-string v0, "vCard"

    const-string v1, "Use the charset \"UTF-8\" for export."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->cF:Ljava/lang/String;

    .line 206
    const-string v0, "CHARSET=UTF-8"

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->fh:Ljava/lang/String;

    goto :goto_2

    .line 216
    :cond_8
    iput-object p2, p0, Lcom/android/vcard/VCardBuilder;->cF:Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHARSET="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->fh:Ljava/lang/String;

    goto :goto_2
.end method

.method private a(Ljava/util/List;)Landroid/content/ContentValues;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 261
    .line 263
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 264
    if-eqz v0, :cond_0

    .line 267
    const-string v4, "is_super_primary"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 268
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    .line 288
    :goto_1
    if-nez v0, :cond_4

    .line 289
    if-eqz v1, :cond_3

    .line 298
    :goto_2
    return-object v1

    .line 272
    :cond_1
    if-nez v2, :cond_5

    .line 275
    const-string v4, "is_primary"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 276
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->e(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    move-object v2, v1

    move-object v1, v0

    .line 286
    goto :goto_0

    .line 281
    :cond_2
    if-nez v1, :cond_5

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->e(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v1, v2

    .line 283
    goto :goto_3

    .line 294
    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    move-object v1, v2

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_1
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1751
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->cA:Z

    if-eqz v0, :cond_0

    .line 1754
    const-string v0, "VOICE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1763
    :goto_0
    return-void

    .line 1756
    :cond_0
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 1757
    if-eqz v0, :cond_1

    .line 1758
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->r(Ljava/lang/String;)V

    goto :goto_0

    .line 1760
    :cond_1
    const-string v0, "vCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown or unsupported (by vCard) Phone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 18
    .parameter

    .prologue
    .line 306
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/vcard/VCardBuilder;->cA:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/vcard/VCardBuilder;->ff:Z

    if-eqz v1, :cond_1

    .line 311
    :cond_0
    const-string v1, "vCard"

    const-string v2, "Invalid flag is used in vCard 4.0 construction. Ignored."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 315
    :cond_2
    const-string v1, "FN"

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :goto_0
    return-object p0

    .line 324
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/vcard/VCardBuilder;->a(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v7

    .line 326
    const-string v1, "data3"

    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    const-string v1, "data5"

    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    const-string v1, "data2"

    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 329
    const-string v1, "data4"

    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 330
    const-string v1, "data6"

    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 331
    const-string v1, "data1"

    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 337
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 338
    const-string v1, "FN"

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, v1

    .line 344
    :cond_5
    const-string v8, "data9"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 346
    const-string v9, "data8"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 348
    const-string v10, "data7"

    invoke-virtual {v7, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 350
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 351
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 352
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 353
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 354
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const-string v17, "N"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 361
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v16, 0x3b

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v10, 0x3b

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 365
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v10, "SORT-AS="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Lcom/android/vcard/VCardUtils;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 386
    const-string v1, "vCard"

    const-string v8, "DISPLAY_NAME is empty."

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v1}, Lcom/android/vcard/VCardConfig;->m(I)I

    move-result v1

    invoke-static/range {v1 .. v6}, Lcom/android/vcard/VCardUtils;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    const-string v2, "FN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/vcard/VCardBuilder;->f(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 393
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "FN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private varargs b([Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2106
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->fg:Z

    if-nez v2, :cond_1

    .line 2114
    :cond_0
    :goto_0
    return v0

    .line 2109
    :cond_1
    array-length v3, p1

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, p1, v2

    .line 2110
    new-array v5, v1, [Ljava/lang/String;

    aput-object v4, v5, v0

    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->c([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    .line 2111
    goto :goto_0

    .line 2109
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private e(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2085
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->k(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->j(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->fd:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->cA:Z

    if-nez v0, :cond_2

    .line 2087
    :cond_1
    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2089
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2090
    return-void
.end method

.method private e(Landroid/content/ContentValues;)Z
    .locals 9
    .parameter

    .prologue
    .line 240
    const-string v0, "data3"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    const-string v1, "data5"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    const-string v2, "data2"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    const-string v3, "data4"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    const-string v4, "data6"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 245
    const-string v5, "data9"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 247
    const-string v6, "data8"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 249
    const-string v7, "data7"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 251
    const-string v8, "data1"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 252
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Landroid/content/ContentValues;)V
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x20

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 596
    const-string v0, "data9"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 598
    const-string v0, "data8"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 600
    const-string v0, "data7"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 602
    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->ff:Z

    if-eqz v3, :cond_0

    .line 603
    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 604
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 605
    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 616
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->cA:Z

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "SOUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "X-IRMC-N"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    :cond_1
    :goto_0
    return-void

    .line 630
    :cond_2
    iget v3, p0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v3}, Lcom/android/vcard/VCardConfig;->k(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 722
    :cond_3
    :goto_1
    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->fc:Z

    if-eqz v3, :cond_1

    .line 723
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 724
    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->fa:Z

    if-eqz v3, :cond_17

    new-array v3, v7, [Ljava/lang/String;

    aput-object v0, v3, v6

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->d([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    move v4, v7

    .line 728
    :goto_2
    if-eqz v4, :cond_18

    .line 729
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 733
    :goto_3
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v8, "X-PHONETIC-FIRST-NAME"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    new-array v5, v7, [Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 735
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->fh:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_4
    if-eqz v4, :cond_5

    .line 739
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    :cond_5
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 747
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->fa:Z

    if-eqz v0, :cond_19

    new-array v0, v7, [Ljava/lang/String;

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->d([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    move v3, v7

    .line 751
    :goto_4
    if-eqz v3, :cond_1a

    .line 752
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 756
    :goto_5
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "X-PHONETIC-MIDDLE-NAME"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    new-array v4, v7, [Ljava/lang/String;

    aput-object v1, v4, v6

    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->b([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 758
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->fh:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    :cond_7
    if-eqz v3, :cond_8

    .line 762
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    :cond_8
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    :cond_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 770
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->fa:Z

    if-eqz v0, :cond_1b

    new-array v0, v7, [Ljava/lang/String;

    aput-object v2, v0, v6

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->d([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    move v1, v7

    .line 774
    :goto_6
    if-eqz v1, :cond_1c

    .line 775
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 779
    :goto_7
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "X-PHONETIC-LAST-NAME"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    new-array v3, v7, [Ljava/lang/String;

    aput-object v2, v3, v6

    invoke-direct {p0, v3}, Lcom/android/vcard/VCardBuilder;->b([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 781
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->fh:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    :cond_a
    if-eqz v1, :cond_b

    .line 785
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    :cond_b
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 632
    :cond_c
    iget v3, p0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v3}, Lcom/android/vcard/VCardConfig;->j(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 633
    iget v3, p0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v3, v2, v1, v0}, Lcom/android/vcard/VCardUtils;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 636
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "SORT-STRING"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    iget v4, p0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->j(I)Z

    move-result v4

    if-eqz v4, :cond_d

    new-array v4, v7, [Ljava/lang/String;

    aput-object v3, v4, v6

    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->b([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 642
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->fh:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    :cond_d
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 648
    :cond_e
    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->eY:Z

    if-eqz v3, :cond_3

    .line 662
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "SOUND"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "X-IRMC-N"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->fe:Z

    if-nez v3, :cond_14

    new-array v3, v7, [Ljava/lang/String;

    aput-object v2, v3, v6

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->d([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    new-array v3, v7, [Ljava/lang/String;

    aput-object v1, v3, v6

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->d([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    new-array v3, v7, [Ljava/lang/String;

    aput-object v0, v3, v6

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->d([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    :cond_f
    move v3, v7

    .line 678
    :goto_8
    if-eqz v3, :cond_15

    .line 679
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 680
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 681
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 688
    :goto_9
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    aput-object v5, v8, v6

    aput-object v4, v8, v7

    const/4 v9, 0x2

    aput-object v3, v8, v9

    invoke-direct {p0, v8}, Lcom/android/vcard/VCardBuilder;->b([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 690
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/vcard/VCardBuilder;->fh:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    :cond_10
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1d

    .line 697
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v6

    .line 700
    :goto_a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 701
    if-eqz v5, :cond_16

    move v5, v6

    .line 706
    :goto_b
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    :cond_11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 709
    if-nez v5, :cond_12

    .line 710
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 712
    :cond_12
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    :cond_13
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_14
    move v3, v6

    .line 666
    goto/16 :goto_8

    .line 683
    :cond_15
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 684
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 685
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_9

    .line 704
    :cond_16
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_17
    move v4, v6

    .line 724
    goto/16 :goto_2

    .line 731
    :cond_18
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_19
    move v3, v6

    .line 747
    goto/16 :goto_4

    .line 754
    :cond_1a
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_1b
    move v1, v6

    .line 770
    goto/16 :goto_6

    .line 777
    :cond_1c
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_1d
    move v5, v7

    goto :goto_a
.end method

.method private g(Landroid/content/ContentValues;)Lcom/android/vcard/VCardBuilder$PostalStruct;
    .locals 12
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1100
    const-string v0, "data5"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1101
    const-string v0, "data6"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1102
    const-string v0, "data4"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1103
    const-string v0, "data7"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1104
    const-string v0, "data8"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1105
    const-string v0, "data9"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1106
    const-string v0, "data10"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1107
    const/4 v0, 0x7

    new-array v6, v0, [Ljava/lang/String;

    aput-object v4, v6, v2

    aput-object v8, v6, v1

    const/4 v0, 0x2

    aput-object v5, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v9, v6, v0

    const/4 v0, 0x5

    aput-object v10, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    .line 1110
    invoke-static {v6}, Lcom/android/vcard/VCardUtils;->g([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1111
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->fa:Z

    if-eqz v0, :cond_0

    invoke-static {v6}, Lcom/android/vcard/VCardUtils;->d([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1114
    :goto_0
    invoke-static {v6}, Lcom/android/vcard/VCardUtils;->c([Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1134
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1135
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1136
    const-string v2, ""

    .line 1147
    :goto_2
    if-eqz v0, :cond_5

    .line 1148
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1149
    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1150
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1151
    invoke-direct {p0, v9}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1152
    invoke-direct {p0, v10}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1153
    invoke-direct {p0, v11}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1163
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1164
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    const-string v7, ";"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    const-string v7, ";"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    const-string v6, ";"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    const-string v5, ";"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    const-string v4, ";"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    const-string v3, ";"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    new-instance v2, Lcom/android/vcard/VCardBuilder$PostalStruct;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/android/vcard/VCardBuilder$PostalStruct;-><init>(ZZLjava/lang/String;)V

    move-object v0, v2

    .line 1208
    :goto_4
    return-object v0

    :cond_0
    move v0, v2

    .line 1111
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1114
    goto :goto_1

    :cond_2
    move-object v2, v8

    .line 1138
    goto :goto_2

    .line 1141
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v3

    .line 1142
    goto :goto_2

    .line 1144
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1155
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1156
    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1157
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1158
    invoke-direct {p0, v9}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1159
    invoke-direct {p0, v10}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1160
    invoke-direct {p0, v11}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1161
    invoke-direct {p0, v8}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_3

    .line 1180
    :cond_6
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1182
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1183
    const/4 v0, 0x0

    goto :goto_4

    .line 1185
    :cond_7
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->fa:Z

    if-eqz v0, :cond_9

    new-array v0, v1, [Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->d([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 1188
    :goto_5
    new-array v4, v1, [Ljava/lang/String;

    aput-object v3, v4, v2

    invoke-static {v4}, Lcom/android/vcard/VCardUtils;->c([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    move v2, v1

    .line 1191
    :cond_8
    if-eqz v0, :cond_a

    .line 1192
    invoke-direct {p0, v3}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1200
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1201
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    const-string v1, ";"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    const-string v1, ";"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    const-string v1, ";"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    const-string v1, ";"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    const-string v1, ";"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    new-instance v1, Lcom/android/vcard/VCardBuilder$PostalStruct;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/android/vcard/VCardBuilder$PostalStruct;-><init>(ZZLjava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_4

    :cond_9
    move v0, v2

    .line 1185
    goto :goto_5

    .line 1194
    :cond_a
    invoke-direct {p0, v3}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6
.end method

.method private g(Ljava/util/List;)V
    .locals 9
    .parameter

    .prologue
    const v6, 0x7fffffff

    .line 1034
    .line 1036
    const/4 v2, 0x0

    .line 1037
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v6

    move v5, v6

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1038
    if-eqz v0, :cond_0

    .line 1041
    const-string v1, "data2"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1042
    sget-object v1, Lcom/android/vcard/VCardBuilder;->fj:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1043
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1045
    :goto_1
    if-ge v4, v5, :cond_4

    .line 1047
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1049
    if-nez v4, :cond_2

    move-object v3, v0

    .line 1055
    :goto_2
    if-nez v3, :cond_3

    .line 1056
    const-string v0, "vCard"

    const-string v1, "Should not come here. Must have at least one postal data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :goto_3
    return-void

    :cond_1
    move v4, v6

    .line 1043
    goto :goto_1

    :cond_2
    move v2, v4

    :goto_4
    move v3, v1

    move v5, v2

    move-object v2, v0

    .line 1053
    goto :goto_0

    .line 1060
    :cond_3
    const-string v0, "data3"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1061
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->a(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V

    goto :goto_3

    :cond_4
    move-object v0, v2

    move v1, v3

    move v2, v5

    goto :goto_4

    :cond_5
    move v1, v3

    move-object v3, v2

    goto :goto_2
.end method

.method private h(Ljava/util/List;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1065
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1066
    if-eqz v3, :cond_0

    .line 1069
    const-string v0, "data2"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1070
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1072
    :goto_1
    const-string v0, "data3"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1073
    const-string v0, "is_primary"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1075
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    move v4, v6

    :goto_2
    move-object v0, p0

    .line 1077
    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->a(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V

    goto :goto_0

    :cond_1
    move v1, v6

    .line 1070
    goto :goto_1

    :cond_2
    move v4, v5

    .line 1075
    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_2

    .line 1079
    :cond_4
    return-void
.end method

.method private q(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter

    .prologue
    .line 946
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 949
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 950
    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    if-ge v1, v3, :cond_1

    .line 951
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 952
    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 953
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 956
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 959
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 960
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    :cond_2
    return-object v2
.end method

.method private q(Ljava/util/List;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2043
    const/4 v0, 0x1

    .line 2044
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2045
    iget v4, p0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->j(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->k(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2046
    :cond_1
    iget v4, p0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->k(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2049
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2053
    if-eqz v1, :cond_3

    move v1, v2

    .line 2058
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->r(Ljava/lang/String;)V

    move v0, v1

    :goto_3
    move v1, v0

    .line 2068
    goto :goto_0

    .line 2046
    :cond_2
    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2056
    :cond_3
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2060
    :cond_4
    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->x(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2063
    if-eqz v1, :cond_5

    move v1, v2

    .line 2068
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->r(Ljava/lang/String;)V

    move v0, v1

    goto :goto_3

    .line 2066
    :cond_5
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2071
    :cond_6
    return-void
.end method

.method private r(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardBuilder;->e(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2078
    return-void
.end method

.method private s(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2119
    const-string v0, ""

    .line 2152
    :goto_0
    return-object v0

    .line 2122
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2128
    :try_start_0
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->cF:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move v1, v2

    move v3, v2

    .line 2134
    :cond_1
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_2

    .line 2135
    const-string v5, "=%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-byte v7, v0, v3

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2136
    add-int/lit8 v3, v3, 0x1

    .line 2137
    add-int/lit8 v1, v1, 0x3

    .line 2139
    const/16 v5, 0x43

    if-lt v1, v5, :cond_1

    .line 2147
    const-string v1, "=\r\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 2148
    goto :goto_1

    .line 2129
    :catch_0
    move-exception v0

    .line 2130
    const-string v0, "vCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Charset "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->cF:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " cannot be used. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Try default charset"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    move v1, v2

    move v3, v2

    goto :goto_1

    .line 2152
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private t(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x5c

    .line 2163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2164
    const-string v0, ""

    .line 2227
    :goto_0
    return-object v0

    .line 2167
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2168
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2169
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_6

    .line 2170
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2171
    sparse-switch v3, :sswitch_data_0

    .line 2222
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2169
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2173
    :sswitch_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2174
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2178
    :sswitch_1
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v2, :cond_2

    .line 2179
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2180
    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 2192
    :cond_2
    :sswitch_2
    const-string v3, "\\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2196
    :sswitch_3
    iget-boolean v4, p0, Lcom/android/vcard/VCardBuilder;->eX:Z

    if-eqz v4, :cond_3

    .line 2197
    const-string v3, "\\\\"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2205
    :cond_3
    :sswitch_4
    iget-boolean v4, p0, Lcom/android/vcard/VCardBuilder;->cA:Z

    if-eqz v4, :cond_4

    .line 2206
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2207
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2209
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2214
    :sswitch_5
    iget-boolean v4, p0, Lcom/android/vcard/VCardBuilder;->eX:Z

    if-eqz v4, :cond_5

    .line 2215
    const-string v3, "\\,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2217
    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2227
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2171
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x2c -> :sswitch_5
        0x3b -> :sswitch_0
        0x3c -> :sswitch_4
        0x3e -> :sswitch_4
        0x5c -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/android/vcard/VCardBuilder;
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 823
    const/4 v0, 0x0

    .line 824
    if-eqz p1, :cond_e

    .line 825
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 826
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 827
    const-string v2, "data2"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 828
    const-string v2, "data3"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 829
    const-string v2, "is_primary"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 830
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    .line 832
    :goto_1
    const-string v4, "data1"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 833
    if-eqz v0, :cond_1

    .line 834
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 836
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 840
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v4, v3

    .line 844
    :goto_2
    if-eqz p2, :cond_5

    .line 845
    invoke-interface {p2, v0, v4, v7, v2}, Lcom/android/vcard/VCardPhoneNumberTranslationCallback;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 847
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 848
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 849
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3, v7, v0, v2}, Lcom/android/vcard/VCardBuilder;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    :goto_3
    move v1, v0

    .line 910
    goto :goto_0

    .line 830
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 840
    :cond_4
    const/4 v3, 0x1

    move v4, v3

    goto :goto_2

    .line 851
    :cond_5
    const/4 v3, 0x6

    if-eq v4, v3, :cond_6

    iget v3, p0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v3}, Lcom/android/vcard/VCardConfig;->s(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 854
    :cond_6
    const/4 v1, 0x1

    .line 855
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 856
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 857
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3, v7, v0, v2}, Lcom/android/vcard/VCardBuilder;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_3

    .line 860
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->q(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 861
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 864
    const/4 v3, 0x1

    .line 865
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 866
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 870
    const/16 v1, 0x2c

    const/16 v9, 0x70

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x3b

    const/16 v10, 0x77

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 876
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 877
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 878
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    .line 879
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v10, :cond_b

    .line 880
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 881
    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-nez v12, :cond_9

    const/16 v12, 0x2b

    if-ne v11, v12, :cond_a

    .line 882
    :cond_9
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 879
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 885
    :cond_b
    iget v1, p0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->T(I)I

    move-result v1

    .line 887
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/android/vcard/VCardUtils$PhoneNumberUtilsPort;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 896
    :cond_c
    iget v9, p0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v9}, Lcom/android/vcard/VCardConfig;->k(I)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "tel:"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 899
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 903
    :cond_d
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 904
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, v7, v1, v2}, Lcom/android/vcard/VCardBuilder;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_e
    move v1, v0

    .line 913
    :cond_f
    if-nez v1, :cond_10

    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->cA:Z

    if-eqz v0, :cond_10

    .line 914
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/vcard/VCardBuilder;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 917
    :cond_10
    return-object p0

    :cond_11
    move v0, v3

    goto/16 :goto_3

    :cond_12
    move v0, v1

    goto/16 :goto_3
.end method

.method public a(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1486
    invoke-direct {p0, p3}, Lcom/android/vcard/VCardBuilder;->g(Landroid/content/ContentValues;)Lcom/android/vcard/VCardBuilder$PostalStruct;

    move-result-object v0

    .line 1487
    if-nez v0, :cond_6

    .line 1488
    if-eqz p5, :cond_5

    .line 1491
    const-string v0, ""

    move v1, v2

    move v3, v2

    .line 1502
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1503
    if-eqz p4, :cond_0

    .line 1504
    const-string v5, "PREF"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1506
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1530
    const-string v2, "vCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown StructuredPostal type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "ADR"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1537
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->q(Ljava/util/List;)V

    .line 1540
    :cond_2
    if-eqz v1, :cond_3

    .line 1545
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->fh:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    :cond_3
    if-eqz v3, :cond_4

    .line 1549
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    :cond_4
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    :cond_5
    return-void

    .line 1496
    :cond_6
    iget-boolean v3, v0, Lcom/android/vcard/VCardBuilder$PostalStruct;->pu:Z

    .line 1497
    iget-boolean v1, v0, Lcom/android/vcard/VCardBuilder$PostalStruct;->pv:Z

    .line 1498
    iget-object v0, v0, Lcom/android/vcard/VCardBuilder$PostalStruct;->pw:Ljava/lang/String;

    goto :goto_0

    .line 1508
    :pswitch_1
    const-string v2, "HOME"

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1512
    :pswitch_2
    const-string v2, "WORK"

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1516
    :pswitch_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v2

    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->e([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1506
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1560
    packed-switch p1, :pswitch_data_0

    .line 1589
    const-string v1, "vCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Email type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    :cond_0
    :goto_0
    :pswitch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1596
    if-eqz p4, :cond_1

    .line 1597
    const-string v2, "PREF"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1599
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1600
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1603
    :cond_2
    const-string v0, "EMAIL"

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/vcard/VCardBuilder;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1605
    return-void

    .line 1562
    :pswitch_1
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->v(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1563
    const-string v0, "CELL"

    goto :goto_0

    .line 1564
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->e([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1573
    :pswitch_2
    const-string v0, "HOME"

    goto :goto_0

    .line 1577
    :pswitch_3
    const-string v0, "WORK"

    goto :goto_0

    .line 1585
    :pswitch_4
    const-string v0, "CELL"

    goto :goto_0

    .line 1560
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 1609
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "TEL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    if-nez p1, :cond_2

    .line 1614
    const/4 v0, 0x7

    .line 1619
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1620
    packed-switch v0, :pswitch_data_0

    .line 1732
    :cond_0
    :goto_1
    :pswitch_0
    if-eqz p4, :cond_1

    .line 1733
    const-string v1, "PREF"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1736
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1737
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/vcard/VCardBuilder;->a(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    .line 1742
    :goto_2
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1743
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    return-void

    .line 1616
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 1622
    :pswitch_1
    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "HOME"

    aput-object v3, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1627
    :pswitch_2
    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "WORK"

    aput-object v3, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1632
    :pswitch_3
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "HOME"

    aput-object v4, v3, v5

    const-string v4, "FAX"

    aput-object v4, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1637
    :pswitch_4
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "WORK"

    aput-object v4, v3, v5

    const-string v4, "FAX"

    aput-object v4, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1642
    :pswitch_5
    const-string v1, "CELL"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1646
    :pswitch_6
    iget-boolean v1, p0, Lcom/android/vcard/VCardBuilder;->cA:Z

    if-eqz v1, :cond_3

    .line 1649
    const-string v1, "VOICE"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1651
    :cond_3
    const-string v1, "PAGER"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1656
    :pswitch_7
    const-string v1, "VOICE"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1660
    :pswitch_8
    const-string v1, "CAR"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1665
    :pswitch_9
    const-string v3, "WORK"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p4, v1

    .line 1667
    goto/16 :goto_1

    .line 1670
    :pswitch_a
    const-string v1, "ISDN"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_b
    move p4, v1

    .line 1675
    goto/16 :goto_1

    .line 1678
    :pswitch_c
    const-string v1, "FAX"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1682
    :pswitch_d
    const-string v1, "TLX"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1686
    :pswitch_e
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "WORK"

    aput-object v4, v3, v5

    const-string v4, "CELL"

    aput-object v4, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1691
    :pswitch_f
    const-string v1, "WORK"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1693
    iget-boolean v1, p0, Lcom/android/vcard/VCardBuilder;->cA:Z

    if-eqz v1, :cond_4

    .line 1694
    const-string v1, "VOICE"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1696
    :cond_4
    const-string v1, "PAGER"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1701
    :pswitch_10
    const-string v1, "MSG"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1705
    :pswitch_11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1707
    const-string v1, "VOICE"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1708
    :cond_5
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->v(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1709
    const-string v1, "CELL"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1710
    :cond_6
    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->eX:Z

    if-eqz v3, :cond_7

    .line 1712
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1714
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 1715
    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->w(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1716
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1717
    :cond_8
    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v5

    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->e([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1739
    :cond_9
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->q(Ljava/util/List;)V

    goto/16 :goto_2

    .line 1620
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1861
    sget-object v0, Lcom/android/vcard/VCardBuilder;->eW:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1905
    :goto_0
    return-void

    .line 1864
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 1865
    :goto_1
    const/16 v0, 0xf

    if-gt v3, v0, :cond_2

    .line 1866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1867
    if-nez v0, :cond_1

    .line 1868
    const-string v0, ""

    .line 1870
    :cond_1
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1865
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1873
    :cond_2
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->fg:Z

    if-eqz v0, :cond_5

    invoke-static {v4}, Lcom/android/vcard/VCardUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 1876
    :goto_2
    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->fa:Z

    if-eqz v3, :cond_6

    invoke-static {v4}, Lcom/android/vcard/VCardUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1879
    :goto_3
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "X-ANDROID-CUSTOM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1880
    if-eqz v0, :cond_3

    .line 1881
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1882
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->fh:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1884
    :cond_3
    if-eqz v1, :cond_4

    .line 1885
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1886
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    :cond_4
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1889
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1892
    if-eqz v1, :cond_7

    .line 1893
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1901
    :goto_5
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1902
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    move v0, v2

    .line 1873
    goto :goto_2

    :cond_6
    move v1, v2

    .line 1876
    goto :goto_3

    .line 1899
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1904
    :cond_8
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1954
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1955
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1919
    new-array v2, v0, [Ljava/lang/String;

    aput-object p3, v2, v1

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->c([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v4, v0

    .line 1921
    :goto_0
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->fa:Z

    if-eqz v2, :cond_1

    new-array v2, v0, [Ljava/lang/String;

    aput-object p3, v2, v1

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->d([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v5, v0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1924
    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1926
    return-void

    :cond_0
    move v4, v1

    .line 1919
    goto :goto_0

    :cond_1
    move v5, v1

    .line 1921
    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1966
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1967
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1968
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->q(Ljava/util/List;)V

    .line 1970
    :cond_0
    if-eqz p4, :cond_1

    .line 1971
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1972
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->fh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1976
    :cond_1
    if-eqz p5, :cond_2

    .line 1977
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1979
    invoke-direct {p0, p3}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1986
    :goto_0
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1987
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1988
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1989
    return-void

    .line 1983
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 14
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 411
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->b(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object p0

    .line 585
    :cond_0
    :goto_0
    return-object p0

    .line 415
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 416
    :cond_2
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->j(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 420
    const-string v0, "N"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v0, "FN"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_3
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->cA:Z

    if-eqz v0, :cond_0

    .line 423
    const-string v0, "N"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->a(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v10

    .line 430
    const-string v0, "data3"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 431
    const-string v0, "data5"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 432
    const-string v0, "data2"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 433
    const-string v0, "data4"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 434
    const-string v0, "data6"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 435
    const-string v0, "data1"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 438
    :cond_5
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    aput-object v1, v6, v8

    aput-object v3, v6, v7

    const/4 v9, 0x2

    aput-object v2, v6, v9

    const/4 v9, 0x3

    aput-object v4, v6, v9

    const/4 v9, 0x4

    aput-object v5, v6, v9

    invoke-direct {p0, v6}, Lcom/android/vcard/VCardBuilder;->b([Ljava/lang/String;)Z

    move-result v11

    .line 440
    iget-boolean v6, p0, Lcom/android/vcard/VCardBuilder;->fe:Z

    if-nez v6, :cond_c

    new-array v6, v7, [Ljava/lang/String;

    aput-object v1, v6, v8

    invoke-static {v6}, Lcom/android/vcard/VCardUtils;->d([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-array v6, v7, [Ljava/lang/String;

    aput-object v3, v6, v8

    invoke-static {v6}, Lcom/android/vcard/VCardUtils;->d([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-array v6, v7, [Ljava/lang/String;

    aput-object v2, v6, v8

    invoke-static {v6}, Lcom/android/vcard/VCardUtils;->d([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-array v6, v7, [Ljava/lang/String;

    aput-object v4, v6, v8

    invoke-static {v6}, Lcom/android/vcard/VCardUtils;->d([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-array v6, v7, [Ljava/lang/String;

    aput-object v5, v6, v8

    invoke-static {v6}, Lcom/android/vcard/VCardUtils;->d([Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    :cond_6
    move v6, v7

    .line 449
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 456
    :goto_2
    new-array v9, v7, [Ljava/lang/String;

    aput-object v0, v9, v8

    invoke-direct {p0, v9}, Lcom/android/vcard/VCardBuilder;->b([Ljava/lang/String;)Z

    move-result v12

    .line 458
    iget-boolean v9, p0, Lcom/android/vcard/VCardBuilder;->fe:Z

    if-nez v9, :cond_e

    new-array v9, v7, [Ljava/lang/String;

    aput-object v0, v9, v8

    invoke-static {v9}, Lcom/android/vcard/VCardUtils;->d([Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    move v9, v7

    .line 467
    :goto_3
    if-eqz v6, :cond_f

    .line 468
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 469
    invoke-direct {p0, v3}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 470
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 471
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 472
    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v3

    move-object v5, v7

    move-object v3, v2

    move-object v7, v8

    move-object v2, v1

    .line 481
    :goto_4
    if-eqz v9, :cond_10

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 485
    :goto_5
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "N"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    iget-boolean v8, p0, Lcom/android/vcard/VCardBuilder;->cA:Z

    if-eqz v8, :cond_11

    .line 487
    if-eqz v11, :cond_7

    .line 488
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->fh:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :cond_7
    if-eqz v6, :cond_8

    .line 492
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :cond_8
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :goto_6
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "FN"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    if-eqz v12, :cond_9

    .line 527
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->fh:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    :cond_9
    if-eqz v9, :cond_a

    .line 531
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_a
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :cond_b
    :goto_7
    invoke-direct {p0, v10}, Lcom/android/vcard/VCardBuilder;->f(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    :cond_c
    move v6, v8

    .line 440
    goto/16 :goto_1

    .line 452
    :cond_d
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->m(I)I

    move-result v0

    invoke-static/range {v0 .. v5}, Lcom/android/vcard/VCardUtils;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_e
    move v9, v8

    .line 458
    goto/16 :goto_3

    .line 474
    :cond_f
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 475
    invoke-direct {p0, v3}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 476
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 477
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 478
    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v3

    move-object v5, v7

    move-object v3, v2

    move-object v7, v8

    move-object v2, v1

    goto/16 :goto_4

    .line 481
    :cond_10
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 503
    :cond_11
    if-eqz v11, :cond_12

    .line 504
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->fh:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    :cond_12
    if-eqz v6, :cond_13

    .line 508
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_13
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 537
    :cond_14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 538
    iget-boolean v1, p0, Lcom/android/vcard/VCardBuilder;->fe:Z

    if-nez v1, :cond_18

    new-array v1, v7, [Ljava/lang/String;

    aput-object v0, v1, v8

    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->d([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    move v2, v7

    .line 541
    :goto_8
    if-eqz v2, :cond_19

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 547
    :goto_9
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "N"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    new-array v3, v7, [Ljava/lang/String;

    aput-object v0, v3, v8

    invoke-direct {p0, v3}, Lcom/android/vcard/VCardBuilder;->b([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 549
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->fh:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :cond_15
    if-eqz v2, :cond_16

    .line 553
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_16
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "FN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v8

    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 571
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->fh:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_17
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_18
    move v2, v8

    .line 538
    goto/16 :goto_8

    .line 541
    :cond_19
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    .line 577
    :cond_1a
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->j(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 578
    const-string v0, "N"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v0, "FN"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 580
    :cond_1b
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->cA:Z

    if-eqz v0, :cond_b

    .line 581
    const-string v0, "N"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->fi:Z

    .line 226
    const-string v0, "BEGIN"

    const-string v1, "VCARD"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "VERSION"

    const-string v1, "4.0"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 229
    :cond_0
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->j(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const-string v0, "VERSION"

    const-string v1, "3.0"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_1
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->i(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    const-string v0, "vCard"

    const-string v1, "Unknown vCard version detected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_2
    const-string v0, "VERSION"

    const-string v1, "2.1"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 5
    .parameter

    .prologue
    .line 797
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->eX:Z

    if-eqz v0, :cond_1

    .line 798
    const/4 v0, 0x0

    move v1, v0

    .line 805
    :goto_0
    if-eqz p1, :cond_3

    .line 806
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 807
    const-string v3, "data1"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 808
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 811
    if-eqz v1, :cond_2

    .line 812
    const-string v3, "vnd.android.cursor.item/nickname"

    invoke-virtual {p0, v3, v0}, Lcom/android/vcard/VCardBuilder;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 799
    :cond_1
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->fb:Z

    if-eqz v0, :cond_3

    .line 800
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 814
    :cond_2
    const-string v0, "NICKNAME"

    invoke-virtual {p0, v0, v3}, Lcom/android/vcard/VCardBuilder;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 818
    :cond_3
    return-object p0
.end method

.method public e(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 966
    .line 967
    if-eqz p1, :cond_6

    .line 968
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 969
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 970
    const-string v4, "data1"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 971
    if-eqz v4, :cond_1

    .line 972
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 974
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 977
    const-string v1, "data2"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 978
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 980
    :goto_1
    const-string v7, "data3"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 981
    const-string v8, "is_primary"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 982
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v3

    .line 985
    :goto_2
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 986
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 987
    invoke-virtual {p0, v1, v7, v4, v0}, Lcom/android/vcard/VCardBuilder;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    move v1, v3

    .line 989
    goto :goto_0

    .line 978
    :cond_3
    const/4 v1, 0x3

    goto :goto_1

    :cond_4
    move v0, v2

    .line 982
    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v1, v2

    .line 992
    :cond_7
    if-nez v1, :cond_8

    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->cA:Z

    if-eqz v0, :cond_8

    .line 993
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 996
    :cond_8
    return-object p0
.end method

.method public f(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 2
    .parameter

    .prologue
    .line 1000
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1001
    :cond_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->cA:Z

    if-eqz v0, :cond_1

    .line 1002
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "ADR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "HOME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    :cond_1
    :goto_0
    return-object p0

    .line 1009
    :cond_2
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->cA:Z

    if-eqz v0, :cond_3

    .line 1010
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->g(Ljava/util/List;)V

    goto :goto_0

    .line 1012
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->h(Ljava/util/List;)V

    goto :goto_0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1771
    const-string v1, "PHOTO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    iget-boolean v1, p0, Lcom/android/vcard/VCardBuilder;->eX:Z

    if-eqz v1, :cond_1

    .line 1774
    const-string v1, "ENCODING=B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    :goto_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1779
    invoke-direct {p0, v0, p2}, Lcom/android/vcard/VCardBuilder;->e(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1780
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1781
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1784
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1786
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    .line 1787
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x4b

    .line 1789
    const-string v1, " "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v0, v1

    move v4, v3

    move v2, v3

    .line 1791
    :goto_1
    if-ge v4, v7, :cond_2

    .line 1792
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1793
    add-int/lit8 v2, v2, 0x1

    .line 1794
    if-le v2, v0, :cond_0

    .line 1795
    const-string v0, "\r\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    move v2, v3

    .line 1791
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1776
    :cond_1
    const-string v1, "ENCODING=BASE64"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1801
    :cond_2
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1802
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1909
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/vcard/VCardBuilder;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1910
    return-void
.end method

.method public i(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1214
    if-eqz p1, :cond_8

    .line 1215
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1216
    const-string v1, "data5"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1217
    if-eqz v1, :cond_0

    .line 1220
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->S(I)Ljava/lang/String;

    move-result-object v6

    .line 1221
    if-eqz v6, :cond_0

    .line 1224
    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1225
    if-eqz v1, :cond_1

    .line 1226
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1228
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1233
    const-string v2, "data2"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1234
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    packed-switch v2, :pswitch_data_0

    move-object v2, v3

    .line 1256
    :goto_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1257
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1258
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1260
    :cond_2
    const-string v2, "is_primary"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1261
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    .line 1263
    :goto_3
    if-eqz v0, :cond_3

    .line 1264
    const-string v0, "PREF"

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    :cond_3
    invoke-virtual {p0, v6, v7, v1}, Lcom/android/vcard/VCardBuilder;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 1234
    :cond_4
    const/4 v2, 0x3

    goto :goto_1

    .line 1236
    :pswitch_0
    const-string v2, "HOME"

    goto :goto_2

    .line 1240
    :pswitch_1
    const-string v2, "WORK"

    goto :goto_2

    .line 1244
    :pswitch_2
    const-string v2, "data3"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1245
    if-eqz v2, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "X-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v3

    goto :goto_2

    :cond_6
    move v0, v4

    .line 1261
    goto :goto_3

    :cond_7
    move v0, v4

    goto :goto_3

    .line 1270
    :cond_8
    return-object p0

    .line 1234
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1944
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/vcard/VCardBuilder;->a(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1945
    return-void
.end method

.method public j(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 3
    .parameter

    .prologue
    .line 1274
    if-eqz p1, :cond_2

    .line 1275
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1276
    const-string v2, "data1"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1277
    if-eqz v0, :cond_1

    .line 1278
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1283
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1284
    const-string v2, "URL"

    invoke-virtual {p0, v2, v0}, Lcom/android/vcard/VCardBuilder;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1288
    :cond_2
    return-object p0
.end method

.method public k(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1292
    if-eqz p1, :cond_b

    .line 1293
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1294
    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1295
    if-eqz v1, :cond_1

    .line 1296
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1298
    :cond_1
    const-string v2, "data5"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1299
    if-eqz v2, :cond_2

    .line 1300
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1302
    :cond_2
    const-string v6, "data4"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1303
    if-eqz v0, :cond_3

    .line 1304
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1307
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1308
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1309
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1312
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1313
    const/16 v1, 0x3b

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1315
    :cond_5
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1318
    const-string v7, "ORG"

    new-array v1, v3, [Ljava/lang/String;

    aput-object v6, v1, v4

    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->c([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v3

    :goto_1
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->fa:Z

    if-eqz v2, :cond_8

    new-array v2, v3, [Ljava/lang/String;

    aput-object v6, v2, v4

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->d([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_2
    invoke-virtual {p0, v7, v6, v1, v2}, Lcom/android/vcard/VCardBuilder;->a(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1323
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1324
    const-string v6, "TITLE"

    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->c([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v3

    :goto_3
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->fa:Z

    if-eqz v2, :cond_a

    new-array v2, v3, [Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->d([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_4
    invoke-virtual {p0, v6, v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->a(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_7
    move v1, v4

    .line 1318
    goto :goto_1

    :cond_8
    move v2, v4

    goto :goto_2

    :cond_9
    move v1, v4

    .line 1324
    goto :goto_3

    :cond_a
    move v2, v4

    goto :goto_4

    .line 1331
    :cond_b
    return-object p0
.end method

.method public l(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 5
    .parameter

    .prologue
    .line 1335
    if-eqz p1, :cond_2

    .line 1336
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1337
    if-eqz v0, :cond_0

    .line 1340
    const-string v2, "data15"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1341
    if-eqz v0, :cond_0

    .line 1344
    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 1345
    if-nez v2, :cond_1

    .line 1346
    const-string v0, "vCard"

    const-string v2, "Unknown photo type. Ignored."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1350
    :cond_1
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 1351
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1352
    invoke-virtual {p0, v3, v2}, Lcom/android/vcard/VCardBuilder;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1356
    :cond_2
    return-object p0
.end method

.method public m(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1360
    if-eqz p1, :cond_4

    .line 1361
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->eZ:Z

    if-eqz v0, :cond_7

    .line 1362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1364
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1365
    const-string v6, "data1"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1366
    if-nez v0, :cond_0

    .line 1367
    const-string v0, ""

    .line 1369
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 1370
    if-eqz v1, :cond_2

    move v1, v3

    .line 1375
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move v0, v1

    move v1, v0

    .line 1377
    goto :goto_0

    .line 1373
    :cond_2
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1378
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1381
    new-array v0, v2, [Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->c([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    .line 1383
    :goto_2
    iget-boolean v4, p0, Lcom/android/vcard/VCardBuilder;->fa:Z

    if-eqz v4, :cond_6

    new-array v4, v2, [Ljava/lang/String;

    aput-object v1, v4, v3

    invoke-static {v4}, Lcom/android/vcard/VCardUtils;->d([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1386
    :goto_3
    const-string v3, "NOTE"

    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/android/vcard/VCardBuilder;->a(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1403
    :cond_4
    return-object p0

    :cond_5
    move v0, v3

    .line 1381
    goto :goto_2

    :cond_6
    move v2, v3

    .line 1383
    goto :goto_3

    .line 1389
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1390
    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1391
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1392
    new-array v0, v2, [Ljava/lang/String;

    aput-object v5, v0, v3

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->c([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    .line 1394
    :goto_5
    iget-boolean v1, p0, Lcom/android/vcard/VCardBuilder;->fa:Z

    if-eqz v1, :cond_a

    new-array v1, v2, [Ljava/lang/String;

    aput-object v5, v1, v3

    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->d([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    move v1, v2

    .line 1397
    :goto_6
    const-string v6, "NOTE"

    invoke-virtual {p0, v6, v5, v0, v1}, Lcom/android/vcard/VCardBuilder;->a(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_4

    :cond_9
    move v0, v3

    .line 1392
    goto :goto_5

    :cond_a
    move v1, v3

    .line 1394
    goto :goto_6
.end method

.method public n(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1409
    if-eqz p1, :cond_1

    .line 1412
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v1

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1413
    if-eqz v0, :cond_0

    .line 1416
    const-string v2, "data2"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1418
    if-eqz v2, :cond_2

    .line 1419
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1423
    :goto_1
    const/4 v6, 0x3

    if-ne v2, v6, :cond_9

    .line 1424
    const-string v2, "data1"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1425
    if-eqz v2, :cond_0

    .line 1428
    const-string v6, "is_super_primary"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1430
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_3

    move v6, v4

    .line 1432
    :goto_2
    if-eqz v6, :cond_5

    .line 1453
    :goto_3
    if-eqz v2, :cond_a

    .line 1454
    const-string v0, "BDAY"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    :cond_1
    :goto_4
    return-object p0

    .line 1421
    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    :cond_3
    move v6, v5

    .line 1430
    goto :goto_2

    :cond_4
    move v6, v5

    goto :goto_2

    .line 1437
    :cond_5
    const-string v6, "is_primary"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1439
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v4

    .line 1441
    :goto_5
    if-eqz v0, :cond_8

    move-object v0, v1

    :goto_6
    move-object v1, v0

    move-object v3, v2

    .line 1448
    goto :goto_0

    :cond_6
    move v0, v5

    .line 1439
    goto :goto_5

    :cond_7
    move v0, v5

    goto :goto_5

    .line 1444
    :cond_8
    if-nez v1, :cond_b

    move-object v0, v2

    move-object v2, v3

    .line 1446
    goto :goto_6

    .line 1448
    :cond_9
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->fb:Z

    if-eqz v2, :cond_0

    .line 1450
    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {p0, v2, v0}, Lcom/android/vcard/VCardBuilder;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1456
    :cond_a
    if-eqz v1, :cond_1

    .line 1457
    const-string v0, "BDAY"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    move-object v0, v1

    move-object v2, v3

    goto :goto_6

    :cond_c
    move-object v2, v3

    goto :goto_3
.end method

.method public o(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 3
    .parameter

    .prologue
    .line 1465
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->fb:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1466
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1467
    if-eqz v0, :cond_0

    .line 1470
    const-string v2, "vnd.android.cursor.item/relation"

    invoke-virtual {p0, v2, v0}, Lcom/android/vcard/VCardBuilder;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1473
    :cond_1
    return-object p0
.end method

.method public p(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x4

    .line 1815
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->eX:Z

    if-eqz v0, :cond_2

    .line 1816
    const/4 v0, 0x0

    move v2, v0

    .line 1823
    :goto_0
    if-eqz p1, :cond_6

    .line 1824
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1825
    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1826
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1829
    if-eqz v2, :cond_3

    .line 1831
    const-string v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1832
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 1835
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1838
    :cond_1
    const-string v1, "X-SIP"

    invoke-virtual {p0, v1, v0}, Lcom/android/vcard/VCardBuilder;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1817
    :cond_2
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->fc:Z

    if-eqz v0, :cond_6

    .line 1818
    const/4 v0, 0x1

    move v2, v0

    goto :goto_0

    .line 1840
    :cond_3
    const-string v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sip:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1844
    :cond_4
    iget v1, p0, Lcom/android/vcard/VCardBuilder;->P:I

    invoke-static {v1}, Lcom/android/vcard/VCardConfig;->k(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1847
    const-string v1, "TEL"

    .line 1852
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/android/vcard/VCardBuilder;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1850
    :cond_5
    const-string v1, "IMPP"

    goto :goto_2

    .line 1856
    :cond_6
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2232
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->fi:Z

    if-nez v0, :cond_1

    .line 2233
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->cA:Z

    if-eqz v0, :cond_0

    .line 2234
    const-string v0, "X-CLASS"

    const-string v1, "PUBLIC"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    const-string v0, "X-REDUCTION"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    const-string v0, "X-NO"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    const-string v0, "X-DCM-HMN-MODE"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    :cond_0
    const-string v0, "END"

    const-string v1, "VCARD"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->fi:Z

    .line 2242
    :cond_1
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
