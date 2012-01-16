.class public Lcom/android/common/Rfc822InputFilter;
.super Ljava/lang/Object;
.source "Rfc822InputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    sub-int v0, p3, p2

    if-ne v0, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_1

    :cond_0
    move-object v0, v2

    .line 72
    :goto_0
    return-object v0

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    :goto_1
    if-lez p5, :cond_4

    .line 46
    add-int/lit8 p5, p5, -0x1

    invoke-interface {p4, p5}, Landroid/text/Spanned;->charAt(I)C

    move-result v3

    .line 47
    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    move-object v0, v2

    .line 52
    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 50
    goto :goto_1

    .line 54
    :sswitch_2
    if-nez v0, :cond_2

    move-object v0, v2

    .line 55
    goto :goto_0

    .line 59
    :cond_2
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_3

    .line 60
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, ","

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 64
    :cond_3
    const-string v0, ", "

    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 72
    goto :goto_0

    .line 47
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0x2e -> :sswitch_1
        0x40 -> :sswitch_2
    .end sparse-switch
.end method
