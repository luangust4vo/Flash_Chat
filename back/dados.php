<?php
while ($row = mysqli_fetch_assoc($sql)) {
    $output .= '<a href="../pages/chat.php?user_id=' . $row["unique_id"] .'">
                        <div class="info">
                            <img src="../assets/' . $row["image"] . '" alt="" />
                            <div class="details">
                            <span>' . $row["name"] . " " . $row["lastname"] . '</span>
                            <p>Mensagem teste</p>
                            </div>
                        </div>
                        <div class="status">
                            <i class="fa-sharp fa-solid fa-circle"></i>
                        </div>
                    </a>';
}