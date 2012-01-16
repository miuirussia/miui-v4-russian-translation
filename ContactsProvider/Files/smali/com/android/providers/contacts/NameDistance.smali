.class public Lcom/android/providers/contacts/NameDistance;
.super Ljava/lang/Object;
.source "NameDistance.java"


# instance fields
.field private final kY:I

.field private final kZ:Z

.field private final la:[Z

.field private final lb:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/NameDistance;->kZ:Z

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/NameDistance;->kY:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/contacts/NameDistance;->lb:[Z

    iput-object v0, p0, Lcom/android/providers/contacts/NameDistance;->la:[Z

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/android/providers/contacts/NameDistance;->kY:I

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/NameDistance;->kZ:Z

    .line 48
    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/android/providers/contacts/NameDistance;->la:[Z

    .line 49
    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/android/providers/contacts/NameDistance;->lb:[Z

    .line 50
    return-void
.end method


# virtual methods
.method public b([B[B)F
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 67
    array-length v0, p1

    array-length v1, p2

    if-le v0, v1, :cond_1

    move-object v0, p1

    move-object v1, p2

    .line 75
    :goto_0
    array-length v3, v1

    .line 76
    const/4 v2, 0x3

    if-lt v3, v2, :cond_3

    .line 77
    const/4 v4, 0x1

    .line 78
    const/4 v2, 0x0

    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_14

    .line 79
    aget-byte v5, v1, v2

    aget-byte v6, v0, v2

    if-eq v5, v6, :cond_2

    .line 80
    const/4 v2, 0x0

    .line 84
    :goto_2
    if-eqz v2, :cond_3

    .line 85
    const/high16 v0, 0x3f80

    .line 167
    :cond_0
    :goto_3
    return v0

    :cond_1
    move-object v0, p2

    move-object v1, p1

    .line 72
    goto :goto_0

    .line 78
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 89
    :cond_3
    iget-boolean v2, p0, Lcom/android/providers/contacts/NameDistance;->kZ:Z

    if-eqz v2, :cond_4

    .line 90
    const/4 v0, 0x0

    goto :goto_3

    .line 93
    :cond_4
    iget v2, p0, Lcom/android/providers/contacts/NameDistance;->kY:I

    if-le v3, v2, :cond_13

    .line 94
    iget v2, p0, Lcom/android/providers/contacts/NameDistance;->kY:I

    .line 97
    :goto_4
    array-length v3, v0

    .line 98
    iget v4, p0, Lcom/android/providers/contacts/NameDistance;->kY:I

    if-le v3, v4, :cond_5

    .line 99
    iget v3, p0, Lcom/android/providers/contacts/NameDistance;->kY:I

    .line 102
    :cond_5
    iget-object v4, p0, Lcom/android/providers/contacts/NameDistance;->la:[Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v6}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 103
    iget-object v4, p0, Lcom/android/providers/contacts/NameDistance;->lb:[Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 105
    div-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, -0x1

    .line 106
    if-gez v4, :cond_6

    .line 107
    const/4 v4, 0x0

    .line 110
    :cond_6
    const/4 v6, 0x0

    .line 111
    const/4 v5, 0x0

    move v8, v5

    :goto_5
    if-ge v8, v2, :cond_a

    .line 112
    aget-byte v9, v1, v8

    .line 114
    sub-int v7, v8, v4

    .line 115
    if-gez v7, :cond_7

    .line 116
    const/4 v7, 0x0

    .line 119
    :cond_7
    add-int v5, v8, v4

    add-int/lit8 v5, v5, 0x1

    .line 120
    if-le v5, v3, :cond_8

    move v5, v3

    .line 124
    :cond_8
    :goto_6
    if-ge v7, v5, :cond_12

    .line 125
    iget-object v10, p0, Lcom/android/providers/contacts/NameDistance;->lb:[Z

    aget-boolean v10, v10, v7

    if-nez v10, :cond_9

    aget-byte v10, v0, v7

    if-ne v9, v10, :cond_9

    .line 126
    iget-object v5, p0, Lcom/android/providers/contacts/NameDistance;->la:[Z

    iget-object v9, p0, Lcom/android/providers/contacts/NameDistance;->lb:[Z

    const/4 v10, 0x1

    aput-boolean v10, v9, v7

    aput-boolean v10, v5, v8

    .line 127
    add-int/lit8 v5, v6, 0x1

    .line 111
    :goto_7
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    goto :goto_5

    .line 124
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 133
    :cond_a
    if-nez v6, :cond_b

    .line 134
    const/4 v0, 0x0

    goto :goto_3

    .line 137
    :cond_b
    const/4 v7, 0x0

    .line 138
    const/4 v5, 0x0

    .line 139
    const/4 v4, 0x0

    move v11, v4

    move v4, v5

    move v5, v7

    move v7, v11

    :goto_8
    if-ge v7, v2, :cond_f

    .line 140
    iget-object v8, p0, Lcom/android/providers/contacts/NameDistance;->la:[Z

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_e

    .line 141
    :goto_9
    iget-object v8, p0, Lcom/android/providers/contacts/NameDistance;->lb:[Z

    aget-boolean v8, v8, v4

    if-nez v8, :cond_c

    .line 142
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 144
    :cond_c
    aget-byte v8, v1, v7

    aget-byte v9, v0, v4

    if-eq v8, v9, :cond_d

    .line 145
    add-int/lit8 v5, v5, 0x1

    .line 147
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 139
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 151
    :cond_f
    int-to-float v0, v6

    .line 152
    int-to-float v1, v2

    div-float v1, v0, v1

    int-to-float v4, v3

    div-float v4, v0, v4

    add-float/2addr v1, v4

    div-int/lit8 v4, v5, 0x2

    int-to-float v4, v4

    sub-float v4, v0, v4

    div-float v0, v4, v0

    add-float/2addr v0, v1

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    .line 154
    const v1, 0x3f333333

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 159
    const/4 v4, 0x0

    .line 160
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v2, :cond_10

    .line 161
    aget-byte v5, p1, v1

    aget-byte v6, p2, v1

    if-eq v5, v6, :cond_11

    .line 167
    :cond_10
    const v1, 0x3dcccccd

    const/high16 v2, 0x3f80

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v2, v4

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto/16 :goto_3

    .line 164
    :cond_11
    add-int/lit8 v4, v4, 0x1

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_12
    move v5, v6

    goto :goto_7

    :cond_13
    move v2, v3

    goto/16 :goto_4

    :cond_14
    move v2, v4

    goto/16 :goto_2
.end method
