.class public Lcom/android/providers/contacts/ContactLookupKey;
.super Ljava/lang/Object;
.source "ContactLookupKey.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    if-nez p6, :cond_0

    .line 71
    const-string p6, ""

    .line 74
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_1
    invoke-static {p1, p2}, Lcom/android/providers/contacts/ContactLookupKey;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    if-nez p5, :cond_3

    .line 80
    const/16 v0, 0x72

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p6}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_2
    :goto_0
    return-void

    .line 83
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 84
    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {p0, p5}, Lcom/android/providers/contacts/ContactLookupKey;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 92
    move v1, v0

    .line 95
    :goto_0
    const/16 v2, 0x2e

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 96
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, p1, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 106
    return v1

    .line 101
    :cond_0
    const/4 v1, 0x1

    .line 102
    invoke-virtual {p0, p1, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 103
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    add-int/lit8 v0, v2, 0x1

    .line 105
    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xfff

    goto :goto_0
.end method


# virtual methods
.method public g(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter

    .prologue
    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    const-string v0, "profile"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    invoke-direct {v0}, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;-><init>()V

    .line 117
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vT:I

    .line 118
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    .line 254
    :goto_0
    return-object v0

    .line 122
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 123
    const/4 v5, 0x0

    .line 124
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 127
    const/4 v0, 0x0

    .line 128
    const/4 v1, 0x0

    .line 131
    :goto_1
    if-ge v5, v9, :cond_13

    .line 132
    const/4 v2, 0x0

    .line 135
    const/4 v4, 0x0

    move v7, v4

    .line 136
    :goto_2
    if-ge v5, v9, :cond_18

    .line 137
    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 138
    const/16 v5, 0x30

    if-lt v2, v5, :cond_1

    const/16 v5, 0x39

    if-le v2, v5, :cond_2

    .line 145
    :cond_1
    :goto_3
    const/16 v5, 0x69

    if-ne v2, v5, :cond_3

    .line 146
    const/4 v2, 0x0

    .line 147
    const/4 v0, 0x0

    move v5, v0

    move v6, v2

    .line 160
    :goto_4
    packed-switch v6, :pswitch_data_0

    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 141
    :cond_2
    mul-int/lit8 v5, v7, 0xa

    add-int/lit8 v6, v2, -0x30

    add-int/2addr v5, v6

    move v7, v5

    move v5, v4

    goto :goto_2

    .line 148
    :cond_3
    const/16 v5, 0x65

    if-ne v2, v5, :cond_4

    .line 149
    const/4 v2, 0x0

    .line 150
    const/4 v0, 0x1

    move v5, v0

    move v6, v2

    goto :goto_4

    .line 151
    :cond_4
    const/16 v5, 0x6e

    if-ne v2, v5, :cond_5

    .line 152
    const/4 v2, 0x1

    move v5, v0

    move v6, v2

    goto :goto_4

    .line 153
    :cond_5
    const/16 v5, 0x72

    if-ne v2, v5, :cond_6

    .line 154
    const/4 v2, 0x2

    move v5, v0

    move v6, v2

    goto :goto_4

    .line 156
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid lookup id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :pswitch_0
    if-eqz v5, :cond_b

    .line 163
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v4

    .line 164
    :goto_5
    if-ge v0, v9, :cond_9

    .line 165
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 167
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_8

    .line 168
    if-ne v2, v9, :cond_7

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid lookup id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_7
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 174
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_a

    .line 175
    const/16 v0, 0x2e

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 176
    add-int/lit8 v0, v2, 0x1

    goto :goto_5

    .line 181
    :cond_8
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v2

    goto :goto_5

    :cond_9
    move v2, v0

    .line 184
    :cond_a
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_6
    new-instance v4, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    invoke-direct {v4}, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;-><init>()V

    .line 246
    iput v7, v4, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vS:I

    .line 247
    iput v6, v4, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vT:I

    .line 248
    iput-object v1, v4, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vU:Ljava/lang/String;

    .line 249
    iput-object v0, v4, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->key:Ljava/lang/String;

    .line 250
    const-wide/16 v6, -0x1

    iput-wide v6, v4, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vf:J

    .line 251
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v5

    move v5, v2

    .line 252
    goto/16 :goto_1

    :cond_b
    move v0, v4

    .line 187
    :goto_7
    if-ge v0, v9, :cond_17

    .line 188
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 189
    const/16 v10, 0x2e

    if-ne v0, v10, :cond_16

    .line 193
    :goto_8
    if-ne v2, v9, :cond_c

    .line 194
    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 196
    :cond_c
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :pswitch_1
    move v0, v4

    .line 203
    :goto_9
    if-ge v0, v9, :cond_15

    .line 204
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 205
    const/16 v10, 0x2e

    if-ne v0, v10, :cond_14

    .line 209
    :goto_a
    if-ne v2, v9, :cond_d

    .line 210
    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 212
    :cond_d
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 217
    :pswitch_2
    const/4 v0, -0x1

    move v2, v4

    .line 219
    :cond_e
    if-ge v2, v9, :cond_10

    .line 220
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 221
    const/16 v11, 0x2d

    if-ne v10, v11, :cond_f

    const/4 v11, -0x1

    if-ne v0, v11, :cond_f

    move v0, v2

    .line 224
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 225
    const/16 v11, 0x2e

    if-ne v10, v11, :cond_e

    .line 229
    :cond_10
    const/4 v10, -0x1

    if-eq v0, v10, :cond_11

    .line 230
    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 231
    add-int/lit8 v4, v0, 0x1

    .line 233
    :cond_11
    if-ne v2, v9, :cond_12

    .line 234
    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 236
    :cond_12
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_13
    move-object v0, v3

    .line 254
    goto/16 :goto_0

    :cond_14
    move v0, v2

    goto :goto_9

    :cond_15
    move v2, v0

    goto :goto_a

    :cond_16
    move v0, v2

    goto :goto_7

    :cond_17
    move v2, v0

    goto :goto_8

    :cond_18
    move v4, v5

    goto/16 :goto_3

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
