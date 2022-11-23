<?php
while ($row = mysqli_fetch_assoc($sql)) {
    $sql2 = "SELECT * FROM messages WHERE (receiver_id = {$row["unique_id"]} 
            OR sender_id = {$row["unique_id"]}) AND (sender_id = {$sender_id} 
            OR receiver_id = {$sender_id}) ORDER BY msg_id DESC LIMIT 1"; 
    
    $query = $con->query($sql2);
    $row2 = mysqli_fetch_assoc($query);
    if($query -> num_rows > 0){
        $result = $row2["message"];
    } else {
        $result = "Nenhuma mensagem ;-;";
    }

    (strlen($result) > 28) ? $msg = substr($result, 0, 28)."..." : $msg = $result;
    ($sender_id === $row2["sender_id"]) ? $you = "You: " : $you = "";

    ($row["status"] == "Offline") ? $offline = "Offline" : $offline = "";

    $output .= '<a href="../pages/chat.php?user_id=' . $row["unique_id"] .'">
                        <div class="info">
                            <img src="../assets/' . $row["image"] . '" alt="" />
                            <div class="details">
                            <span>' . $row["name"] . " " . $row["lastname"] . '</span>
                            <p>' . $you . $msg . '</p>
                            </div>
                        </div>
                        <div class="status ' . $offline . '">
                            <i class="fa-sharp fa-solid fa-circle"></i>
                        </div>
                    </a>';
}