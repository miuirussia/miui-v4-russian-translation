.class public Lcom/android/providers/contacts/PostalSplitter;
.super Ljava/lang/Object;
.source "PostalSplitter.java"


# static fields
.field private static final ni:Ljava/lang/String;


# instance fields
.field private final hF:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/PostalSplitter;->ni:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/providers/contacts/PostalSplitter;->hF:Ljava/util/Locale;

    .line 64
    return-void
.end method

.method private b(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;
    .locals 12
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    iget-object v0, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    .line 101
    :goto_0
    iget-object v3, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->ld:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    move v3, v1

    .line 102
    :goto_1
    iget-object v4, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->le:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    move v4, v1

    .line 103
    :goto_2
    iget-object v5, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lf:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    move v5, v1

    .line 104
    :goto_3
    iget-object v6, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lg:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17

    move v6, v1

    .line 105
    :goto_4
    iget-object v7, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lh:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_18

    move v7, v1

    .line 106
    :goto_5
    iget-object v8, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->li:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_19

    move v8, v1

    .line 112
    :goto_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    if-nez v8, :cond_0

    if-eqz v7, :cond_1a

    :cond_0
    move v10, v1

    .line 115
    :goto_7
    if-nez v6, :cond_1

    if-nez v5, :cond_1

    if-eqz v4, :cond_1b

    :cond_1
    move v9, v1

    .line 116
    :goto_8
    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    move v2, v1

    .line 118
    :cond_3
    if-eqz v10, :cond_6

    .line 119
    if-eqz v8, :cond_4

    .line 120
    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->li:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_4
    if-eqz v7, :cond_6

    .line 123
    if-eqz v8, :cond_5

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_5
    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lh:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_6
    if-eqz v9, :cond_d

    .line 129
    if-eqz v10, :cond_7

    .line 130
    const-string v1, "\n"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_7
    if-eqz v6, :cond_8

    .line 133
    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lg:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_8
    if-eqz v5, :cond_a

    .line 136
    if-eqz v6, :cond_9

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_9
    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lf:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_a
    if-eqz v4, :cond_d

    .line 140
    if-nez v6, :cond_b

    if-eqz v5, :cond_c

    :cond_b
    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_c
    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->le:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_d
    if-eqz v2, :cond_12

    .line 146
    if-nez v10, :cond_e

    if-eqz v9, :cond_f

    .line 147
    :cond_e
    const-string v1, "\n"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_f
    if-eqz v0, :cond_10

    .line 150
    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lc:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_10
    if-eqz v3, :cond_12

    .line 153
    if-eqz v0, :cond_11

    const-string v0, " "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_11
    iget-object v0, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->ld:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_12
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1c

    .line 159
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_9
    return-object v0

    :cond_13
    move v0, v2

    .line 100
    goto/16 :goto_0

    :cond_14
    move v3, v2

    .line 101
    goto/16 :goto_1

    :cond_15
    move v4, v2

    .line 102
    goto/16 :goto_2

    :cond_16
    move v5, v2

    .line 103
    goto/16 :goto_3

    :cond_17
    move v6, v2

    .line 104
    goto/16 :goto_4

    :cond_18
    move v7, v2

    .line 105
    goto/16 :goto_5

    :cond_19
    move v8, v2

    .line 106
    goto/16 :goto_6

    :cond_1a
    move v10, v2

    .line 114
    goto/16 :goto_7

    :cond_1b
    move v9, v2

    .line 115
    goto/16 :goto_8

    .line 161
    :cond_1c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private c(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    iget-object v0, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    .line 167
    :goto_0
    iget-object v3, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->ld:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    move v3, v1

    .line 168
    :goto_1
    iget-object v4, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->le:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    move v4, v1

    .line 169
    :goto_2
    iget-object v5, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lf:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    move v5, v1

    .line 170
    :goto_3
    iget-object v6, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lg:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17

    move v6, v1

    .line 171
    :goto_4
    iget-object v7, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lh:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_18

    move v7, v1

    .line 172
    :goto_5
    iget-object v8, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->li:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_19

    move v8, v1

    .line 178
    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    if-nez v0, :cond_0

    if-nez v3, :cond_0

    if-eqz v4, :cond_1a

    :cond_0
    move v9, v1

    .line 181
    :goto_7
    if-nez v5, :cond_1

    if-nez v6, :cond_1

    if-eqz v7, :cond_2

    :cond_1
    move v2, v1

    .line 184
    :cond_2
    if-eqz v9, :cond_8

    .line 185
    if-eqz v0, :cond_3

    .line 186
    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lc:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_3
    if-eqz v3, :cond_5

    .line 189
    if-eqz v0, :cond_4

    const-string v1, "\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_4
    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->ld:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_5
    if-eqz v4, :cond_8

    .line 193
    if-nez v0, :cond_6

    if-eqz v3, :cond_7

    :cond_6
    const-string v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_7
    iget-object v0, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->le:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_8
    if-eqz v2, :cond_f

    .line 199
    if-eqz v9, :cond_9

    .line 200
    const-string v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_9
    if-eqz v5, :cond_a

    .line 203
    iget-object v0, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lf:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_a
    if-eqz v6, :cond_c

    .line 206
    if-eqz v5, :cond_b

    const-string v0, ", "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_b
    iget-object v0, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lg:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_c
    if-eqz v7, :cond_f

    .line 210
    if-nez v5, :cond_d

    if-eqz v6, :cond_e

    :cond_d
    const-string v0, " "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_e
    iget-object v0, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lh:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_f
    if-eqz v8, :cond_12

    .line 216
    if-nez v9, :cond_10

    if-eqz v2, :cond_11

    .line 217
    :cond_10
    const-string v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_11
    if-eqz v8, :cond_12

    .line 220
    iget-object v0, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->li:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_12
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1b

    .line 225
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_8
    return-object v0

    :cond_13
    move v0, v2

    .line 166
    goto/16 :goto_0

    :cond_14
    move v3, v2

    .line 167
    goto/16 :goto_1

    :cond_15
    move v4, v2

    .line 168
    goto/16 :goto_2

    :cond_16
    move v5, v2

    .line 169
    goto/16 :goto_3

    :cond_17
    move v6, v2

    .line 170
    goto/16 :goto_4

    :cond_18
    move v7, v2

    .line 171
    goto/16 :goto_5

    :cond_19
    move v8, v2

    .line 172
    goto/16 :goto_6

    :cond_1a
    move v9, v2

    .line 180
    goto/16 :goto_7

    .line 227
    :cond_1b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static h([Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 232
    if-nez p0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v0

    .line 235
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, p0, v2

    .line 236
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 235
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 239
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    .line 240
    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lc:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->ld:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->le:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lf:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lg:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lh:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->li:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 90
    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter;->hF:Ljava/util/Locale;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/providers/contacts/PostalSplitter;->ni:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/PostalSplitter;->hF:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/providers/contacts/PostalSplitter;->h([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/PostalSplitter;->b(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/PostalSplitter;->c(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/android/providers/contacts/PostalSplitter$Postal;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iput-object p2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->lc:Ljava/lang/String;

    .line 74
    :cond_0
    return-void
.end method
