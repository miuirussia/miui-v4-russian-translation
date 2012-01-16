.class public Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfoHelper.java"


# static fields
.field public static kR:Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;


# instance fields
.field public kN:Landroid/net/Uri;

.field public kO:Ljava/lang/String;

.field public kP:J

.field public kQ:Landroid/net/Uri;

.field public label:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public normalizedNumber:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public numberType:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 344
    new-instance v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;

    invoke-direct {v0}, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kR:Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 360
    if-ne p0, p1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v0

    .line 361
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 362
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 363
    :cond_3
    check-cast p1, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;

    .line 364
    iget-object v2, p0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kN:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kN:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/providers/contacts/util/UriUtils;->a(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 365
    :cond_4
    iget-object v2, p0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 366
    :cond_5
    iget v2, p0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->type:I

    iget v3, p1, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->type:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 367
    :cond_6
    iget v2, p0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->numberType:I

    iget v3, p1, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->numberType:I

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    .line 368
    :cond_7
    iget-object v2, p0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->label:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->label:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 369
    :cond_8
    iget-object v2, p0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->number:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    .line 370
    :cond_9
    iget-object v2, p0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kO:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kO:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    .line 371
    :cond_a
    iget-object v2, p0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    .line 372
    :cond_b
    iget-wide v2, p0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kP:J

    iget-wide v4, p1, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kP:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    move v0, v1

    goto :goto_0

    .line 373
    :cond_c
    iget-object v2, p0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kQ:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kQ:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/providers/contacts/util/UriUtils;->a(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 351
    .line 353
    iget-object v0, p0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kN:Landroid/net/Uri;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 354
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->name:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 355
    return v0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kN:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    goto :goto_0

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method
