.class Lcom/android/internal/app/ExternalRingtonePickerActivity$1;
.super Ljava/lang/Object;
.source "ExternalRingtonePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ExternalRingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ExternalRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ExternalRingtonePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity$1;->this$0:Lcom/android/internal/app/ExternalRingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity$1;->this$0:Lcom/android/internal/app/ExternalRingtonePickerActivity;

    #setter for: Lcom/android/internal/app/ExternalRingtonePickerActivity;->mClickedPos:I
    invoke-static {v0, p2}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->access$002(Lcom/android/internal/app/ExternalRingtonePickerActivity;I)I

    iget-object v0, p0, Lcom/android/internal/app/ExternalRingtonePickerActivity$1;->this$0:Lcom/android/internal/app/ExternalRingtonePickerActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/app/ExternalRingtonePickerActivity;->playRingtone(II)V
    invoke-static {v0, p2, v1}, Lcom/android/internal/app/ExternalRingtonePickerActivity;->access$100(Lcom/android/internal/app/ExternalRingtonePickerActivity;II)V

    return-void
.end method
