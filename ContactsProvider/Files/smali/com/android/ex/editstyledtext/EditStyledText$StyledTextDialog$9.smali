.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$9;
.super Ljava/lang/Object;
.source "EditStyledText.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gz:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;


# direct methods
.method constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 2282
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$9;->gz:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2284
    const-string v0, "EditStyledText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBuilder.onclick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$9;->gz:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->a(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$9;->gz:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->c(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->b(Lcom/android/ex/editstyledtext/EditStyledText;I)I

    move-result v0

    .line 2287
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$9;->gz:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->a(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->D(I)V

    .line 2288
    return-void
.end method
