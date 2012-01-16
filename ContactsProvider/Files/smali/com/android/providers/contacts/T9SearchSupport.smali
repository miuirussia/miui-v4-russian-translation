.class public Lcom/android/providers/contacts/T9SearchSupport;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# static fields
.field private static final eA:Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;

.field private static final eB:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

.field private static eC:Lcom/android/providers/contacts/T9SearchSupport;

.field private static eD:J

.field private static eE:J

.field private static eF:Ljava/lang/String;

.field private static final ey:Ljava/text/Collator;

.field private static final ez:Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;


# instance fields
.field private eG:Ljava/lang/Object;

.field private eH:Ljava/lang/Boolean;

.field private eI:Landroid/database/sqlite/SQLiteStatement;

.field private eJ:Landroid/database/sqlite/SQLiteStatement;

.field private eK:Landroid/database/sqlite/SQLiteStatement;

.field private eL:Landroid/database/sqlite/SQLiteStatement;

.field private eM:[Ljava/util/ArrayList;

.field private eN:Z

.field private eO:[Z

.field private eP:[Ljava/util/ArrayList;

.field private eQ:[Z

.field private eR:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

.field private eS:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

.field eT:Ljava/util/HashMap;

.field private eU:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1043
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->ey:Ljava/text/Collator;

    .line 1048
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->ez:Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;

    .line 1053
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->eA:Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;

    .line 1058
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Ljava/util/ArrayList;I)V

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->eB:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    return-void
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/16 v6, 0xc

    const/16 v2, 0xa

    const/4 v5, 0x1

    .line 1312
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2557
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eT:Ljava/util/HashMap;

    .line 1313
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eG:Ljava/lang/Object;

    .line 1314
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eH:Ljava/lang/Boolean;

    .line 1316
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/T9SearchSupport;->j(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1319
    iput-boolean v5, p0, Lcom/android/providers/contacts/T9SearchSupport;->eN:Z

    .line 1321
    new-array v0, v2, [Ljava/util/ArrayList;

    check-cast v0, [Ljava/util/ArrayList;

    .line 1322
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eO:[Z

    .line 1324
    new-array v1, v6, [Ljava/util/ArrayList;

    check-cast v1, [Ljava/util/ArrayList;

    .line 1325
    new-array v4, v6, [Z

    iput-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->eQ:[Z

    .line 1326
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1327
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v0, v3

    .line 1328
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v1, v3

    .line 1329
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->eO:[Z

    aput-boolean v5, v4, v3

    .line 1330
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->eQ:[Z

    aput-boolean v5, v4, v3

    .line 1326
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1332
    :cond_0
    :goto_1
    if-ge v2, v6, :cond_1

    .line 1333
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v1, v2

    .line 1334
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->eQ:[Z

    aput-boolean v5, v3, v2

    .line 1332
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1336
    :cond_1
    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eM:[Ljava/util/ArrayList;

    .line 1337
    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    .line 1340
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eR:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    .line 1341
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    invoke-direct {v0, v7}, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eS:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    .line 1343
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$1;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$1;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport$1;->start()V

    .line 1351
    return-void
.end method

.method public static K(I)C
    .locals 2
    .parameter

    .prologue
    .line 1133
    if-ltz p0, :cond_0

    const/16 v0, 0x9

    if-gt p0, v0, :cond_0

    .line 1134
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1141
    :goto_0
    return v0

    .line 1137
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1144
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "INVALID INDEX"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1139
    :pswitch_0
    const/16 v0, 0x2b

    goto :goto_0

    .line 1141
    :pswitch_1
    const/16 v0, 0x2c

    goto :goto_0

    .line 1137
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private L(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;
    .locals 1
    .parameter

    .prologue
    .line 2893
    const/4 v0, 0x0

    .line 2894
    packed-switch p1, :pswitch_data_0

    .line 2920
    :goto_0
    return-object v0

    .line 2896
    :pswitch_0
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    goto :goto_0

    .line 2899
    :pswitch_1
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$RawContactDeletingOperation;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$RawContactDeletingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    goto :goto_0

    .line 2902
    :pswitch_2
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$DataInsertingOperation;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$DataInsertingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    goto :goto_0

    .line 2905
    :pswitch_3
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    goto :goto_0

    .line 2908
    :pswitch_4
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    goto :goto_0

    .line 2911
    :pswitch_5
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    goto :goto_0

    .line 2914
    :pswitch_6
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    goto :goto_0

    .line 2917
    :pswitch_7
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    goto :goto_0

    .line 2894
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;ILjava/util/BitSet;)I
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 2132
    .line 2135
    add-int/lit8 v2, p2, 0x1

    .line 2136
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 2137
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    .line 2142
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 2146
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p4

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, p3, v1, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2147
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    sub-int/2addr v0, p4

    invoke-virtual {p5, p2, v0}, Ljava/util/BitSet;->set(II)V

    .line 2210
    :goto_1
    return v7

    .line 2136
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v7, v9

    .line 2150
    goto :goto_1

    .line 2157
    :cond_3
    add-int/lit8 v0, p4, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->c(C)C

    move-result v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_b

    .line 2158
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p4, 0x2

    if-ne v0, v1, :cond_4

    .line 2159
    const/4 v7, 0x2

    .line 2161
    invoke-virtual {p5, p2}, Ljava/util/BitSet;->set(I)V

    .line 2162
    invoke-virtual {p5, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 2166
    :cond_4
    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/T9SearchSupport;->a(Ljava/lang/String;ILjava/lang/String;ILjava/util/BitSet;)I

    move-result v0

    add-int/2addr v0, v7

    .line 2168
    if-le v0, v7, :cond_5

    .line 2169
    invoke-virtual {p5, p2}, Ljava/util/BitSet;->set(I)V

    move v7, v0

    .line 2170
    goto :goto_1

    :cond_5
    move v6, v0

    .line 2175
    :goto_2
    sub-int v1, v2, p2

    .line 2176
    add-int/lit8 v0, v2, -0x1

    move v8, v1

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_6

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v8, -0x1

    move v8, v1

    goto :goto_3

    .line 2179
    :cond_6
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p4

    if-gt v0, v8, :cond_8

    .line 2183
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p4

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, p3, v1, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2184
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    sub-int/2addr v0, p4

    invoke-virtual {p5, p2, v0}, Ljava/util/BitSet;->set(II)V

    move v7, v6

    .line 2185
    goto :goto_1

    :cond_7
    move v7, v9

    .line 2187
    goto :goto_1

    .line 2190
    :cond_8
    add-int v0, p4, v8

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->c(C)C

    move-result v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_a

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x1

    add-int/lit8 v3, v8, -0x1

    invoke-virtual {p1, v0, p3, v1, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2196
    add-int v0, p4, v8

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 2198
    add-int/lit8 v7, v6, 0x1

    .line 2199
    add-int v0, p2, v8

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p5, p2, v0}, Ljava/util/BitSet;->set(II)V

    goto/16 :goto_1

    .line 2203
    :cond_9
    add-int v4, p4, v8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/T9SearchSupport;->a(Ljava/lang/String;ILjava/lang/String;ILjava/util/BitSet;)I

    move-result v0

    add-int/2addr v0, v6

    .line 2205
    if-le v0, v7, :cond_a

    .line 2206
    add-int v1, p2, v8

    invoke-virtual {p5, p2, v1}, Ljava/util/BitSet;->set(II)V

    .line 2207
    add-int/lit8 v7, v0, 0x1

    goto/16 :goto_1

    :cond_a
    move v7, v9

    .line 2210
    goto/16 :goto_1

    :cond_b
    move v6, v7

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/BitSet;)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2225
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2249
    :cond_0
    :goto_0
    return v4

    .line 2229
    :cond_1
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->c(C)C

    move-result v6

    .line 2231
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v7, v0, 0x1

    move v0, v4

    .line 2233
    :goto_1
    if-ge v0, v7, :cond_0

    .line 2235
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 2236
    if-ltz v2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    .line 2241
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/T9SearchSupport;->a(Ljava/lang/String;ILjava/lang/String;ILjava/util/BitSet;)I

    move-result v0

    .line 2242
    if-lez v0, :cond_2

    move v4, v0

    .line 2244
    goto :goto_0

    .line 2247
    :cond_2
    add-int/lit8 v0, v2, 0x1

    .line 2248
    goto :goto_1
.end method

.method private a(J[Ljava/util/ArrayList;[ZIJ)J
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1710
    aget-object v0, p3, p5

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1711
    iget-object v2, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v2, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->fs:J

    cmp-long v2, p6, v2

    if-nez v2, :cond_0

    .line 1714
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 1716
    iget-object v2, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v2, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vC:J

    const-wide/16 v4, 0x1

    add-long p1, v2, v4

    .line 1718
    :cond_1
    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iput-wide p1, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vC:J

    .line 1719
    aput-boolean v6, p4, p5

    .line 1720
    iput-boolean v6, p0, Lcom/android/providers/contacts/T9SearchSupport;->eN:Z

    goto :goto_0

    .line 1723
    :cond_2
    return-wide p1
.end method

.method private a(Ljava/lang/String;Lcom/android/providers/contacts/T9SearchSupport$CachedResults;[Ljava/util/ArrayList;)Landroid/util/Pair;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2078
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->ii:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2082
    const/4 v4, -0x1

    move v2, v1

    .line 2083
    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->ii:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2087
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v4, v2, :cond_1

    move v3, v0

    .line 2089
    :goto_1
    if-ltz v4, :cond_8

    .line 2091
    iget-object v2, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->ij:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    aget-object v2, v2, v4

    .line 2092
    if-nez v2, :cond_3

    .line 2097
    add-int/lit8 v3, v4, -0x1

    :goto_2
    if-ltz v3, :cond_2

    iget-object v2, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->ij:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_1
    move v3, v1

    .line 2087
    goto :goto_1

    :cond_2
    move v3, v1

    .line 2101
    :cond_3
    :goto_3
    if-ltz v4, :cond_4

    if-nez v2, :cond_7

    .line 2104
    :cond_4
    new-instance v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/providers/contacts/T9SearchSupport;->b(C)I

    move-result v3

    aget-object v3, p3, v3

    invoke-direct {v2, v3, v1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Ljava/util/ArrayList;I)V

    .line 2105
    iget-object v3, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->ij:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    aput-object v2, v3, v1

    .line 2107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_6

    :goto_4
    move-object v8, v2

    move v2, v1

    move v1, v0

    move-object v0, v8

    .line 2110
    :goto_5
    add-int/lit8 v3, v2, 0x1

    iget-object v4, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->ii:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 2111
    iget-object v3, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->ij:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->ii:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v2, v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 2113
    :cond_5
    iput-object p1, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->ii:Ljava/lang/String;

    .line 2114
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_6
    move v0, v1

    .line 2107
    goto :goto_4

    :cond_7
    move-object v0, v2

    move v1, v3

    move v2, v4

    goto :goto_5

    :cond_8
    move-object v2, v5

    goto :goto_3
.end method

.method static synthetic a(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;)Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eU:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    return-object p1
.end method

.method private a(Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;Ljava/lang/String;)Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2261
    if-nez p1, :cond_1

    .line 2263
    new-instance p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;

    invoke-direct {p1, p0, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;-><init>(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    .line 2270
    :goto_0
    iget-object v0, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->gs:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->hb:Ljava/util/BitSet;

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/T9SearchSupport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/BitSet;)I

    move-result v0

    .line 2271
    if-lez v0, :cond_0

    .line 2273
    iget-object v1, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->gs:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/providers/contacts/T9SearchSupport;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->hc:I

    .line 2275
    :cond_0
    return-object p1

    .line 2266
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->b(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1212
    sget-wide v0, Lcom/android/providers/contacts/T9SearchSupport;->eD:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 1213
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1212
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1691
    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport;->eM:[Ljava/util/ArrayList;

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v1, v7, v6

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 1692
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/T9SearchSupport;->a(Ljava/util/ArrayList;JLjava/lang/String;Ljava/lang/String;)V

    .line 1691
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1694
    :cond_0
    return-void
.end method

.method private a(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1519
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eM:[Ljava/util/ArrayList;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1521
    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->K(I)C

    move-result v2

    .line 1524
    iget-object v3, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vz:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1525
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    aget-object v3, v3, v0

    monitor-enter v3

    .line 1526
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    aget-object v4, v4, v0

    new-instance v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    invoke-direct {v5, p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;-><init>(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1528
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->eQ:[Z

    aput-boolean v1, v3, v0

    .line 1529
    iput-boolean v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eN:Z

    .line 1532
    :cond_0
    iget-object v3, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->gs:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/providers/contacts/T9SearchSupport;->c(C)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1533
    if-ltz v2, :cond_1

    .line 1534
    new-instance v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;

    invoke-direct {v3, p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;-><init>(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    .line 1536
    iget-object v4, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->gs:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/providers/contacts/T9SearchSupport;->b(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->hc:I

    .line 1537
    iget-object v4, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->hb:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    .line 1538
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    monitor-enter v2

    .line 1539
    :try_start_1
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->eM:[Ljava/util/ArrayList;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1540
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1541
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eO:[Z

    aput-boolean v1, v2, v0

    .line 1542
    iput-boolean v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eN:Z

    .line 1519
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1527
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1540
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1546
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eM:[Ljava/util/ArrayList;

    array-length v0, v0

    :goto_1
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 1548
    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->K(I)C

    move-result v2

    .line 1549
    iget-object v3, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vz:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_3

    .line 1550
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    monitor-enter v2

    .line 1551
    :try_start_4
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    aget-object v3, v3, v0

    new-instance v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    invoke-direct {v4, p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;-><init>(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1552
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1553
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eQ:[Z

    aput-boolean v1, v2, v0

    .line 1554
    iput-boolean v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eN:Z

    .line 1546
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1552
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 1557
    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/android/providers/contacts/T9SearchSupport;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->bL()V

    return-void
.end method

.method static synthetic a(Lcom/android/providers/contacts/T9SearchSupport;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->j(J)V

    return-void
.end method

.method static synthetic a(Lcom/android/providers/contacts/T9SearchSupport;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/T9SearchSupport;->c(JJ)V

    return-void
.end method

.method static synthetic a(Lcom/android/providers/contacts/T9SearchSupport;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/T9SearchSupport;->a(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1863
    .line 1866
    if-nez p0, :cond_2

    :try_start_0
    const-string v0, "INSERT OR REPLACE INTO t9_lookup(data_id,contact_id,raw_contact_id,data,normalized_data,display_name,photo_id,times_contacted,t9_key,display_string,key_type) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1869
    :goto_0
    :try_start_1
    invoke-static {p1}, Lcom/android/providers/contacts/T9SearchSupport;->i(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1870
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 1871
    :try_start_2
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    .line 1872
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1873
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->bs:J

    .line 1874
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->fs:J

    .line 1875
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->br:J

    .line 1876
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    .line 1877
    iget-object v3, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/providers/contacts/T9SearchSupport;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vz:Ljava/lang/String;

    .line 1879
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vA:Ljava/lang/String;

    .line 1880
    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vB:J

    .line 1881
    const/4 v3, 0x7

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vC:J

    .line 1882
    invoke-static {p0, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport;->a(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1884
    :catch_0
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 1885
    :goto_2
    :try_start_3
    const-string v3, "T9SearchSupport"

    const-string v4, "failed to get t9 search item to add"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1887
    if-eqz v2, :cond_0

    .line 1888
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1890
    :cond_0
    if-eqz v1, :cond_1

    if-nez p0, :cond_1

    .line 1891
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1894
    :cond_1
    :goto_3
    return-void

    .line 1866
    :cond_2
    :try_start_4
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eI:Landroid/database/sqlite/SQLiteStatement;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1887
    :cond_3
    if-eqz v1, :cond_4

    .line 1888
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1890
    :cond_4
    if-eqz v2, :cond_1

    if-nez p0, :cond_1

    .line 1891
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_3

    .line 1887
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v1, :cond_5

    .line 1888
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1890
    :cond_5
    if-eqz v2, :cond_6

    if-nez p0, :cond_6

    .line 1891
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_6
    throw v0

    .line 1887
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_4

    .line 1884
    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_2
.end method

.method private static a(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1902
    iget-object v0, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1927
    :cond_0
    return-void

    .line 1906
    :cond_1
    iget-object v0, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vA:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1907
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;

    .line 1908
    iget-object v2, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->gs:Ljava/lang/String;

    iput-object v2, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->gs:Ljava/lang/String;

    .line 1909
    iget v2, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->gq:I

    int-to-long v2, v2

    iput-wide v2, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vE:J

    .line 1910
    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->gr:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vD:Ljava/lang/String;

    .line 1911
    const/4 v0, 0x1

    iget-wide v2, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->bs:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1912
    const/4 v0, 0x2

    iget-wide v2, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->fs:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1913
    const/4 v0, 0x3

    iget-wide v2, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->br:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1914
    const/4 v0, 0x4

    iget-object v2, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1915
    const/4 v0, 0x5

    iget-object v2, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vz:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1916
    const/4 v0, 0x6

    iget-object v2, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vA:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1917
    const/4 v0, 0x7

    iget-wide v2, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vB:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1918
    const/16 v0, 0x8

    iget-wide v2, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vC:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1919
    const/16 v0, 0x9

    iget-object v2, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->gs:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1920
    const/16 v0, 0xa

    iget-object v2, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vD:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1921
    const/16 v0, 0xb

    iget-wide v2, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vE:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1922
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1923
    if-eqz p0, :cond_2

    .line 1924
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    invoke-direct {v0, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/T9SearchSupport;->a(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/providers/contacts/T9SearchSupport;Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->a(Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1936
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1937
    const/4 v0, 0x1

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 1938
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 1939
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1938
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1937
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1942
    :cond_1
    return-void
.end method

.method private a(Ljava/util/ArrayList;JJ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1751
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1752
    iget-object v2, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v2, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->fs:J

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 1753
    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iput-wide p4, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vB:J

    goto :goto_0

    .line 1756
    :cond_1
    return-void
.end method

.method private a(Ljava/util/ArrayList;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1673
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1674
    iget-object v2, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v2, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->bs:J

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 1675
    iget-object v2, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iput-object p4, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    .line 1676
    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iput-object p5, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vz:Ljava/lang/String;

    goto :goto_0

    .line 1679
    :cond_1
    return-void
.end method

.method private a(Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1650
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport$IdType;->nX:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport$IdType;->nW:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport$IdType;->nV:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    if-eq p2, v0, :cond_1

    .line 1661
    :cond_0
    return-void

    .line 1654
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eM:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1655
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eM:[Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->a([Ljava/util/ArrayList;ILjava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V

    .line 1656
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->a([Ljava/util/ArrayList;ILjava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V

    .line 1654
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1658
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eM:[Ljava/util/ArrayList;

    array-length v0, v0

    :goto_1
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1659
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->a([Ljava/util/ArrayList;ILjava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V

    .line 1658
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a([Ljava/util/ArrayList;ILjava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1611
    aget-object v1, p1, p2

    .line 1612
    monitor-enter v1

    .line 1613
    :try_start_0
    aget-object v0, p1, p2

    .line 1614
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1615
    sget-object v3, Lcom/android/providers/contacts/T9SearchSupport$3;->gy:[I

    invoke-virtual {p4}, Lcom/android/providers/contacts/T9SearchSupport$IdType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1638
    :cond_0
    aput-object v2, p1, p2

    .line 1639
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eN:Z

    .line 1641
    return-void

    .line 1617
    :pswitch_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1618
    iget-object v4, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v4, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->bs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1619
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1639
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1624
    :pswitch_1
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1625
    iget-object v4, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v4, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->br:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1626
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1631
    :pswitch_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1632
    iget-object v4, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v4, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->fs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1633
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1615
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(C)I
    .locals 2
    .parameter

    .prologue
    .line 1156
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1157
    add-int/lit8 v0, p0, -0x30

    .line 1164
    :goto_0
    return v0

    .line 1160
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1167
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "INVALID T9 SEARCH CHARACTER"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1162
    :pswitch_0
    const/16 v0, 0xa

    goto :goto_0

    .line 1164
    :pswitch_1
    const/16 v0, 0xb

    goto :goto_0

    .line 1160
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1190
    move v1, v0

    .line 1192
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1193
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-le v2, v3, :cond_0

    .line 1194
    add-int/lit8 v1, v1, 0x1

    .line 1195
    if-le v1, p1, :cond_0

    .line 1196
    const/4 v0, 0x1

    .line 1200
    :goto_1
    return v0

    .line 1192
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1200
    :cond_1
    const/4 v0, 0x3

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic b(Lcom/android/providers/contacts/T9SearchSupport;Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->b(Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V

    return-void
.end method

.method private b(Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1835
    const/4 v0, 0x0

    .line 1836
    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport$3;->gy:[I

    invoke-virtual {p2}, Lcom/android/providers/contacts/T9SearchSupport$IdType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1849
    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1854
    :cond_0
    :goto_1
    return-void

    .line 1838
    :pswitch_0
    const-string v0, "raw_contacts._id"

    goto :goto_0

    .line 1841
    :pswitch_1
    const-string v0, "data._id"

    goto :goto_0

    .line 1844
    :pswitch_2
    const-string v0, "view_contacts._id"

    goto :goto_0

    .line 1853
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/android/providers/contacts/T9SearchSupport;->a(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_1

    .line 1836
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static bF()Lcom/android/providers/contacts/T9SearchSupport;
    .locals 1

    .prologue
    .line 1085
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->h(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    return-object v0
.end method

.method private bH()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1374
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eI:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eI:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1376
    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eI:Landroid/database/sqlite/SQLiteStatement;

    .line 1378
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eJ:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_1

    .line 1379
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eJ:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1380
    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eJ:Landroid/database/sqlite/SQLiteStatement;

    .line 1382
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eK:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_2

    .line 1383
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eK:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1384
    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eK:Landroid/database/sqlite/SQLiteStatement;

    .line 1386
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eL:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_3

    .line 1387
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eL:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1388
    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eL:Landroid/database/sqlite/SQLiteStatement;

    .line 1390
    :cond_3
    return-void
.end method

.method private bI()V
    .locals 2

    .prologue
    .line 1396
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->bH()V

    .line 1398
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT OR REPLACE INTO t9_lookup(data_id,contact_id,raw_contact_id,data,normalized_data,display_name,photo_id,times_contacted,t9_key,display_string,key_type) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eI:Landroid/database/sqlite/SQLiteStatement;

    .line 1399
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE t9_lookup SET data=?, normalized_data=? WHERE data_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eJ:Landroid/database/sqlite/SQLiteStatement;

    .line 1402
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE t9_lookup SET photo_id=? WHERE contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eK:Landroid/database/sqlite/SQLiteStatement;

    .line 1404
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE t9_lookup SET times_contacted=(times_contacted + 1) WHERE contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eL:Landroid/database/sqlite/SQLiteStatement;

    .line 1408
    return-void
.end method

.method private bJ()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1434
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eM:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1435
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eM:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1436
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eO:[Z

    aput-boolean v2, v1, v0

    .line 1437
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1438
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eQ:[Z

    aput-boolean v2, v1, v0

    .line 1434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1440
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eM:[Ljava/util/ArrayList;

    array-length v0, v0

    :goto_1
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1441
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1442
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eQ:[Z

    aput-boolean v2, v1, v0

    .line 1440
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1444
    :cond_1
    iput-boolean v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eN:Z

    .line 1445
    return-void
.end method

.method private bK()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1565
    iget-boolean v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eN:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eH:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 1566
    :goto_0
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eM:[Ljava/util/ArrayList;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1567
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eO:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    .line 1568
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eM:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    monitor-enter v2

    .line 1569
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->eM:[Ljava/util/ArrayList;

    aget-object v3, v3, v0

    sget-object v4, Lcom/android/providers/contacts/T9SearchSupport;->ez:Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1570
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1571
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eO:[Z

    aput-boolean v5, v2, v0

    .line 1573
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eQ:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_1

    .line 1574
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    monitor-enter v2

    .line 1575
    :try_start_1
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    aget-object v3, v3, v0

    sget-object v4, Lcom/android/providers/contacts/T9SearchSupport;->eA:Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1576
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1577
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eQ:[Z

    aput-boolean v5, v2, v0

    .line 1566
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1570
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1576
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1580
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eM:[Ljava/util/ArrayList;

    array-length v0, v0

    :goto_1
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 1581
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eQ:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_3

    .line 1582
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    monitor-enter v2

    .line 1583
    :try_start_4
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    aget-object v3, v3, v0

    sget-object v4, Lcom/android/providers/contacts/T9SearchSupport;->eA:Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1584
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1585
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eQ:[Z

    aput-boolean v5, v2, v0

    .line 1580
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1584
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 1590
    :cond_4
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eR:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->ij:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eR:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v2, v2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->ii:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 1591
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eR:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    const-string v2, ""

    iput-object v2, v0, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->ii:Ljava/lang/String;

    .line 1592
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eS:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->ij:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eS:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v2, v2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->ii:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 1593
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eR:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->ii:Ljava/lang/String;

    .line 1595
    iput-boolean v5, p0, Lcom/android/providers/contacts/T9SearchSupport;->eN:Z

    .line 1600
    :cond_5
    return-void
.end method

.method private bL()V
    .locals 2

    .prologue
    .line 2282
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eG:Ljava/lang/Object;

    monitor-enter v1

    .line 2283
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eH:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2285
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eG:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2286
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2289
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 2290
    return-void

    .line 2289
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic bQ()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->ey:Ljava/text/Collator;

    return-object v0
.end method

.method public static c(C)C
    .locals 1
    .parameter

    .prologue
    .line 1178
    add-int/lit8 v0, p0, -0x30

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    return v0
.end method

.method private c(JJ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 1767
    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport;->eM:[Ljava/util/ArrayList;

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v1, v7, v6

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 1768
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/T9SearchSupport;->a(Ljava/util/ArrayList;JJ)V

    .line 1767
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1770
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/android/providers/contacts/T9SearchSupport;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->bK()V

    return-void
.end method

.method static synthetic d(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eJ:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method private static d(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1225
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1226
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1227
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1228
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1229
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1226
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1232
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eK:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method static synthetic f(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eL:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public static h(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/T9SearchSupport;
    .locals 1
    .parameter

    .prologue
    .line 1092
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->eC:Lcom/android/providers/contacts/T9SearchSupport;

    if-nez v0, :cond_1

    .line 1095
    if-nez p0, :cond_0

    .line 1099
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->f(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1103
    :cond_0
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->eC:Lcom/android/providers/contacts/T9SearchSupport;

    .line 1108
    :cond_1
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->eC:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport;->j(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1109
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->eC:Lcom/android/providers/contacts/T9SearchSupport;

    return-object v0
.end method

.method private static i(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 1113
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->eF:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1115
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->f(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    .line 1116
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->eE:J

    .line 1117
    const-string v1, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/providers/contacts/T9SearchSupport;->eD:J

    .line 1119
    const-string v0, "SELECT data._id AS data_id, view_contacts._id AS contact_id, raw_contacts._id AS raw_contact_id, data.data1 AS data, data.mimetype_id, view_contacts.display_name AS display_name, view_contacts.photo_id AS photo_id, view_contacts.times_contacted AS times_contacted FROM raw_contacts,view_contacts,data WHERE (%s) AND raw_contacts.contact_id=view_contacts._id AND data.raw_contact_id=raw_contacts._id AND (data.mimetype_id=%d OR data.mimetype_id=%d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "%s"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-wide v3, Lcom/android/providers/contacts/T9SearchSupport;->eE:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-wide v3, Lcom/android/providers/contacts/T9SearchSupport;->eD:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->eF:Ljava/lang/String;

    .line 1122
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->eF:Ljava/lang/String;

    return-object v0
.end method

.method private j(J)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 1732
    const-wide/16 v1, -0x1

    move v5, v8

    .line 1733
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eM:[Ljava/util/ArrayList;

    array-length v0, v0

    if-ge v5, v0, :cond_0

    .line 1734
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->eM:[Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->eO:[Z

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/T9SearchSupport;->a(J[Ljava/util/ArrayList;[ZIJ)J

    move-result-wide v1

    .line 1733
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v8

    .line 1737
    :goto_1
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    array-length v0, v0

    if-ge v5, v0, :cond_1

    .line 1738
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->eQ:[Z

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/T9SearchSupport;->a(J[Ljava/util/ArrayList;[ZIJ)J

    move-result-wide v1

    .line 1737
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1741
    :cond_1
    return-void
.end method

.method private j(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 1416
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq p1, v0, :cond_0

    .line 1417
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1420
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->bI()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1428
    :cond_0
    :goto_0
    return-void

    .line 1421
    :catch_0
    move-exception v0

    .line 1424
    invoke-static {p1}, Lcom/android/providers/contacts/T9SearchSupport;->k(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1425
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->bI()V

    goto :goto_0
.end method

.method public static k(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 1778
    const-string v0, "DROP TABLE IF EXISTS t9_lookup"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1779
    const-string v0, "CREATE TABLE t9_lookup (data_id INTEGER REFERENCES contacts(_id) NOT NULL,contact_id INTEGER REFERENCES contacts(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,data TEXT NOT NULL,normalized_data TEXT NOT NULL,display_name TEXT NOT NULL,photo_id INTEGER REFERENCES contacts(photo_id) NOT NULL,times_contacted INTEGER NOT NULL DEFAULT 0,t9_key TEXT NOT NULL,display_string TEXT DEFAULT NULL,key_type INTEGER NOT NULL DEFAULT 0,UNIQUE(data_id, t9_key));"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1793
    return-void
.end method

.method public static l(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter

    .prologue
    .line 1803
    const-string v0, "DELETE FROM t9_lookup"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1805
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 1808
    :goto_0
    if-eqz v0, :cond_0

    .line 1809
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1811
    :cond_0
    const/4 v1, 0x0

    const-string v2, "raw_contacts.deleted=0"

    invoke-static {v1, p0, v2}, Lcom/android/providers/contacts/T9SearchSupport;->a(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1812
    if-eqz v0, :cond_1

    .line 1813
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1818
    :cond_1
    if-eqz v0, :cond_2

    .line 1819
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1825
    :cond_2
    :goto_1
    return-void

    .line 1805
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1815
    :catch_0
    move-exception v1

    .line 1816
    :try_start_1
    const-string v2, "T9SearchSupport"

    const-string v3, "rebuild t9 search database failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1818
    if-eqz v0, :cond_2

    .line 1819
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 1818
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 1819
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_4
    throw v1
.end method

.method private static p(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "matchName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 571
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    .local v6, t9Array:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;>;"
    const-string v7, "0        1        2ABC\u0410\u0411\u0412\u0413 3DEF\u0414\u0415\u0401\u0416\u04174GHI\u0418\u0419\u041a\u041b 5JKL\u041c\u041d\u041e\u041f 6MNO\u0420\u0421\u0422\u04237PQRS\u0424\u0425\u0426\u0427 8TUV\u0428\u0429\u042b\u042a 9WXYZ\u042c\u042d\u042e\u042f"

    .line 576
    .local v7, t9letters:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 577
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 596
    new-instance v8, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    .line 597
    .local v8, t9s:Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;
    const/4 v10, 0x2

    iput v10, v8, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mKeyType:I

    .line 598
    iput-object p0, v8, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mMatchString:Ljava/lang/String;

    .line 599
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mT9Key:Ljava/lang/String;

    .line 600
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    return-object v4

    .line 579
    .end local v8           #t9s:Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;
    :cond_0
    const/16 v3, 0x20

    .line 580
    .local v3, num:C
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 581
    .local v5, sym:C
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    .line 583
    .local v9, tmp:C
    invoke-static {v9}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 584
    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 585
    .local v2, mpos:I
    if-ltz v2, :cond_2

    .line 586
    div-int/lit8 v10, v2, 0x9

    int-to-char v3, v10

    .line 587
    if-eqz v0, :cond_1

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    if-nez v10, :cond_1

    sub-int v10, v0, v11

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v10

    if-nez v10, :cond_3

    .line 588
    :cond_1
    add-int/lit8 v10, v3, 0x41

    int-to-char v3, v10

    .line 594
    .end local v2           #mpos:I
    :cond_2
    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    .restart local v2       #mpos:I
    :cond_3
    add-int/lit8 v10, v3, 0x30

    int-to-char v3, v10

    goto :goto_1
.end method


# virtual methods
.method public a(JJJLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x5

    .line 3016
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3017
    invoke-virtual/range {p0 .. p6}, Lcom/android/providers/contacts/T9SearchSupport;->c(JJJ)V

    .line 3032
    :cond_0
    :goto_0
    return-void

    .line 3021
    :cond_1
    sget-wide v0, Lcom/android/providers/contacts/T9SearchSupport;->eE:J

    cmp-long v0, p5, v0

    if-eqz v0, :cond_2

    sget-wide v0, Lcom/android/providers/contacts/T9SearchSupport;->eD:J

    cmp-long v0, p5, v0

    if-nez v0, :cond_0

    .line 3024
    :cond_2
    cmp-long v0, p1, v3

    if-lez v0, :cond_0

    cmp-long v0, p3, v3

    if-lez v0, :cond_0

    .line 3028
    invoke-direct {p0, v2}, Lcom/android/providers/contacts/T9SearchSupport;->L(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3029
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;

    invoke-direct {v1, p5, p6, p7}, Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->a(JLjava/lang/Object;)V

    .line 3030
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eU:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->a(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public b(JJJLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 3064
    sget-wide v0, Lcom/android/providers/contacts/T9SearchSupport;->eE:J

    cmp-long v0, p5, v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/android/providers/contacts/T9SearchSupport;->eD:J

    cmp-long v0, p5, v0

    if-nez v0, :cond_1

    .line 3067
    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    cmp-long v0, p3, v2

    if-gtz v0, :cond_2

    .line 3075
    :cond_1
    :goto_0
    return-void

    .line 3071
    :cond_2
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/T9SearchSupport;->L(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3072
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->a(JLjava/lang/Object;)V

    .line 3073
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eU:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->a(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public bG()V
    .locals 2

    .prologue
    .line 1357
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eG:Ljava/lang/Object;

    monitor-enter v1

    .line 1358
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eH:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1359
    monitor-exit v1

    .line 1369
    :goto_0
    return-void

    .line 1362
    :cond_0
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$2;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$2;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport$2;->start()V

    .line 1368
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bM()V
    .locals 3

    .prologue
    .line 2856
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eU:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->a(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2857
    return-void
.end method

.method public bN()V
    .locals 3

    .prologue
    .line 2865
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eU:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->a(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2866
    return-void
.end method

.method public bO()V
    .locals 3

    .prologue
    .line 2874
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eU:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->a(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2875
    return-void
.end method

.method public bP()V
    .locals 3

    .prologue
    .line 2883
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eU:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->a(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2884
    return-void
.end method

.method public c(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 2301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2302
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->eB:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .line 2349
    :goto_0
    return-object v0

    .line 2305
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->bL()V

    .line 2310
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eR:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->eM:[Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/contacts/T9SearchSupport;->a(Ljava/lang/String;Lcom/android/providers/contacts/T9SearchSupport$CachedResults;[Ljava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v2

    .line 2312
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2314
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2315
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2318
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_5

    .line 2319
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->fc()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 2320
    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    invoke-direct {p0, v2, v0, p1}, Lcom/android/providers/contacts/T9SearchSupport;->a(Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;Ljava/lang/String;)Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;

    move-result-object v0

    .line 2321
    iget v2, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->hc:I

    if-ne v2, v7, :cond_3

    .line 2322
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    :cond_2
    :goto_2
    move-object v2, v0

    .line 2326
    goto :goto_1

    .line 2324
    :cond_3
    iget v2, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->hc:I

    if-ne v2, v6, :cond_2

    .line 2325
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 2326
    goto :goto_2

    .line 2331
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2343
    :goto_3
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-direct {v0, v3, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Ljava/util/ArrayList;I)V

    .line 2345
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eR:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v1, v1, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->ij:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    goto :goto_0

    .line 2333
    :cond_5
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->fc()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 2334
    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/providers/contacts/T9SearchSupport;->a(Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;Ljava/lang/String;)Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;

    move-result-object v0

    .line 2335
    iget v4, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->hc:I

    if-eq v4, v7, :cond_7

    iget v4, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->hc:I

    if-ne v4, v6, :cond_6

    .line 2337
    :cond_7
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2341
    :cond_8
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->ez:Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    .line 2347
    :cond_9
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-direct {v1, v0, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;I)V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public c(JJJ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 3042
    sget-wide v0, Lcom/android/providers/contacts/T9SearchSupport;->eE:J

    cmp-long v0, p5, v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/android/providers/contacts/T9SearchSupport;->eD:J

    cmp-long v0, p5, v0

    if-nez v0, :cond_1

    .line 3045
    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    cmp-long v0, p3, v2

    if-gtz v0, :cond_2

    .line 3053
    :cond_1
    :goto_0
    return-void

    .line 3049
    :cond_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/T9SearchSupport;->L(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3050
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->a(JLjava/lang/Object;)V

    .line 3051
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eU:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->a(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2361
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-lt v0, v1, :cond_1

    .line 2362
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->eB:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .line 2387
    :goto_0
    return-object v0

    .line 2365
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->bL()V

    .line 2370
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->eS:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eP:[Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->a(Ljava/lang/String;Lcom/android/providers/contacts/T9SearchSupport$CachedResults;[Ljava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v2

    .line 2372
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2374
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2376
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->fc()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 2377
    iget-object v3, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v3, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vz:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 2378
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2381
    :cond_3
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-direct {v0, v1, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Ljava/util/ArrayList;I)V

    .line 2383
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eS:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v1, v1, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->ij:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    goto :goto_0

    .line 2385
    :cond_4
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-direct {v1, v0, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;I)V

    move-object v0, v1

    goto :goto_0
.end method

.method public d(JJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2998
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 3005
    :goto_0
    return-void

    .line 3002
    :cond_0
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/T9SearchSupport;->L(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3003
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->a(JLjava/lang/Object;)V

    .line 3004
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eU:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->a(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public k(J)V
    .locals 2
    .parameter

    .prologue
    .line 2931
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 2936
    :goto_0
    return-void

    .line 2934
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->l(J)V

    .line 2935
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->m(J)V

    goto :goto_0
.end method

.method public l(J)V
    .locals 3
    .parameter

    .prologue
    .line 2946
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 2953
    :goto_0
    return-void

    .line 2950
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/T9SearchSupport;->L(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 2951
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->a(JLjava/lang/Object;)V

    .line 2952
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eU:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->a(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public load()V
    .locals 23

    .prologue
    .line 1451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/T9SearchSupport;->eG:Ljava/lang/Object;

    monitor-enter v3

    .line 1452
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/providers/contacts/T9SearchSupport;->eH:Ljava/lang/Boolean;

    .line 1453
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport;->eG:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 1456
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/T9SearchSupport;->eH:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1457
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1511
    :goto_0
    return-void

    .line 1453
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1464
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v22

    .line 1465
    if-nez v22, :cond_1

    .line 1466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1470
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/contacts/T9SearchSupport;->bJ()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1472
    const/4 v10, 0x0

    .line 1475
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "t9_lookup"

    sget-object v4, Lcom/android/providers/contacts/T9SearchSupport$T9LookupTable;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v20

    .line 1478
    :goto_1
    :try_start_5
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1479
    new-instance v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x5

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x6

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v14, 0x7

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/16 v16, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x9

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0xa

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-direct/range {v2 .. v19}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/T9SearchSupport;->a(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 1491
    :catch_0
    move-exception v2

    move-object/from16 v3, v20

    .line 1492
    :goto_2
    :try_start_6
    const-string v4, "T9SearchSupport"

    const-string v5, "failed to load t9 search items from database"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1494
    if-eqz v3, :cond_2

    .line 1495
    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1500
    :cond_2
    :goto_3
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/providers/contacts/T9SearchSupport;->eH:Ljava/lang/Boolean;

    .line 1501
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/contacts/T9SearchSupport;->bK()V

    .line 1503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/T9SearchSupport;->eG:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1504
    if-nez v22, :cond_3

    .line 1505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1510
    :cond_3
    monitor-exit v21

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    .line 1494
    :cond_4
    if-eqz v20, :cond_2

    .line 1495
    :try_start_8
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1494
    :catchall_2
    move-exception v2

    move-object/from16 v20, v10

    :goto_4
    if-eqz v20, :cond_5

    .line 1495
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1494
    :catchall_3
    move-exception v2

    goto :goto_4

    :catchall_4
    move-exception v2

    move-object/from16 v20, v3

    goto :goto_4

    .line 1491
    :catch_1
    move-exception v2

    move-object v3, v10

    goto :goto_2
.end method

.method public m(J)V
    .locals 3
    .parameter

    .prologue
    .line 2963
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 2970
    :goto_0
    return-void

    .line 2967
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/T9SearchSupport;->L(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 2968
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->a(JLjava/lang/Object;)V

    .line 2969
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eU:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->a(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public n(J)V
    .locals 3
    .parameter

    .prologue
    .line 2980
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 2987
    :goto_0
    return-void

    .line 2984
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/T9SearchSupport;->L(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 2985
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->a(JLjava/lang/Object;)V

    .line 2986
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eU:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->a(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public o(J)V
    .locals 3
    .parameter

    .prologue
    .line 3085
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 3092
    :goto_0
    return-void

    .line 3089
    :cond_0
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/T9SearchSupport;->L(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3090
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->a(JLjava/lang/Object;)V

    .line 3091
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->eU:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->a(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
