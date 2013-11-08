.class Lcom/android/internal/app/CellonRingtonePickerActivity$1;
.super Ljava/lang/Object;
.source "CellonRingtonePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/CellonRingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/CellonRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/CellonRingtonePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity$1;->this$0:Lcom/android/internal/app/CellonRingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const-string v0, "CellonRingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick - which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity$1;->this$0:Lcom/android/internal/app/CellonRingtonePickerActivity;

    #setter for: Lcom/android/internal/app/CellonRingtonePickerActivity;->mClickedPos:I
    invoke-static {v0, p2}, Lcom/android/internal/app/CellonRingtonePickerActivity;->access$002(Lcom/android/internal/app/CellonRingtonePickerActivity;I)I

    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity$1;->this$0:Lcom/android/internal/app/CellonRingtonePickerActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/app/CellonRingtonePickerActivity;->playRingtone(II)V
    invoke-static {v0, p2, v1}, Lcom/android/internal/app/CellonRingtonePickerActivity;->access$100(Lcom/android/internal/app/CellonRingtonePickerActivity;II)V

    return-void
.end method
