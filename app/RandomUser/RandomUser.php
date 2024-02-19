<?php

namespace App\RandomUser;

use GuzzleHttp\Client;

class RandomUser
{
    protected $client;

    public function __construct()
    {
        $this->client = new Client();
    }

    public function fetchRandomUserData($results = 1)
    {
        $response = $this->client->request('GET', 'https://randomuser.me/api/', [
            'query' => [
                'results' => $results,
            ],
        ]);

        if ($response->getStatusCode() === 200) {
            $data = json_decode($response->getBody()->getContents(), true);
            return $data['results'];
        }

        return null;
    }
}
